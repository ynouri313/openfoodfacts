const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const fs = require('fs');
const marked = require('marked');

const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const connectToDatabase = require('./mysqlDB');

const Ingredient = require('./models/ingredient');
const Recette = require('./models/recette');
const BrandedIngredient = require('./models/brandedIngredient');

const app = express();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: false}));
app.use(cookieParser());
app.use(express.static('public'));
app.use((req, res, next) => {
    res.setHeader('Content-Type', 'text/html; charset=utf-8');
    next();
});

const port = process.env.PORT || 3000;
const JWT_SECRET = 'ifindyourlackoffaithdisturbing';

const generateToken = (user) => {
    return jwt.sign({id: user.id, username: user.username}, JWT_SECRET, {expiresIn: '24h'});
};

const authenticateJWT = (req, res, next) => {
    const token = req.cookies.auth_token;

    if (!token) {
        return res.redirect('/login');
    }

    try {
        const decoded = jwt.verify(token, JWT_SECRET);
        req.user = decoded;
        next();
    } catch (error) {
        return res.redirect('/login');
    }
};

app.get('/', async (req, res) => {
    res.render('index');
});

// Route to display the README.md file
app.get('/readme', (req, res) => {
    const readmePath = path.join(__dirname, 'README.md');
    fs.readFile(readmePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading README.md file:', err);
            return res.status(500).send('Error reading README.md file');
        }

        // Check if data is empty or not read properly
        if (!data) {
            return res.status(500).send('README.md file is empty or could not be read');
        }

        // Send the content of README.md wrapped in a <pre> tag to preserve formatting
        res.send(`<pre>${data}</pre>`);
    });
});


app.post('/login', async (req, res) => {
    const {username, password} = req.body;

    const db = await connectToDatabase();
    const query = 'SELECT * FROM users WHERE username = ?';
    const [rows] = await db.execute(query, [username]);

    if (rows.length > 0) {
        const user = rows[0];
        const match = await bcrypt.compare(password, user.password_hash);

        if (match) {
            const token = generateToken(user);

            res.cookie('auth_token', token, {
                httpOnly: true,
                secure: true,
                maxAge: 3600000,
                sameSite: 'strict'
            });

            return res.redirect('/');
        }
    }

    res.status(401).send('Invalid username or password');
});

app.get('/login', (req, res) => {
    res.render('login');
});

app.get('/search_recettes', authenticateJWT, (req, res) => {
    res.render('recettes');
});

app.get('/search_ingredients', authenticateJWT, (req, res) => {
    res.render('ingredients');
});

app.get('/search_branded', authenticateJWT, (req, res) => {
    res.render('brands');
});

app.get('/heartbeat', (req, res) => {
    console.log('Heartbeat');
    res.send({
        nomApplication: 'OFF'
    });
});

app.get('/extracted_data', async (req, res) => {
    res.json({
        "nbProduitsAlimentairesScannes": await Ingredient.countDocuments(),
        "nbProduitsAlimentairesDeBase": await BrandedIngredient.countDocuments(),
        "nbRecettesCuisine": (await Recette.findAll()).length,
    });
});

app.get('/transformed_data', async (req, res) => {
    res.json({
        "indicateurDeQualite": {
            "NutriScore": await getNumberNutriScore(),
            "Nova": await getNumberNova(),
            "EcoScore": await getNumberEcoScore()
        },
        "categoriesProduitAlimentaire": await getCountByCategory()
    });
});

app.get('/type', async (req, res) => {
    try {
        const mysqlConnection = await connectToDatabase();
        // Step 1: Query all `categoriesRecette`
        const [rows] = await mysqlConnection.execute('SELECT categoriesRecette FROM recettes;');

        // Step 2: Process the data to extract unique categories
        const allCategories = rows
            .flatMap(row => row.categoriesRecette ? row.categoriesRecette.split(',') : []) // Split comma-separated categories
            .map(category => category.trim()) // Remove extra spaces
            .filter(category => category); // Remove empty strings

        // Step 3: Remove duplicates
        const uniqueCategories = [...new Set(allCategories)];

        // Step 4: Send the response
        res.json(uniqueCategories);
    } catch (error) {
        console.error('Error fetching categories:', error);
        res.status(500).json({error: 'Failed to fetch categories'});
    }
});

app.post('/recette', async (req, res) => {
    const mysqlConnection = await connectToDatabase();
    const categoriesRecette = req.body.categoriesRecette || [];
    let query = 'SELECT nomRecette, ingredientsRecette, categoriesRecette, descRecette, tempsPrep, tempsCuisson, portions FROM recettes';
    if (categoriesRecette.length > 0) {
        const typeConditions = categoriesRecette.map(type => `FIND_IN_SET('${categoriesRecette}', categoriesRecette)`).join(' AND ');
        query += ` WHERE ${typeConditions}`;
    }
    try {
        //const connection = await mysql.createConnection(mysqlConnection);
        const mysqlConnection = await connectToDatabase();
        const [results] = await mysqlConnection.query(query);
        if (results.length === 0) {
            return res.status(404).json({error: 'Aucune recette trouvée pour les types spécifiés'});
        }
        // Sélectionner une recette aléatoire parmi les résultats
        const recetteAleatoire = results[Math.floor(Math.random() * results.length)];
        // Format ingredientsRecette as an array
        const ingredientsArray = recetteAleatoire.ingredientsRecette.split(',').map(ingredient => ingredient.trim());
        const categoriesArray = recetteAleatoire.categoriesRecette.split(',').map(category => category.trim());
        // Retourner la recette en format JSON
        //res.json({ recette: recetteAleatoire });
        res.json({
            recette: {
                nom: recetteAleatoire.nomRecette,
                ingredientsRecette: ingredientsArray,
                description: recetteAleatoire.descRecette,
                categories: categoriesArray,
                tempsPrep: recetteAleatoire.tempsPrep,
                tempsCuisson: recetteAleatoire.tempsCuisson,
                portions: recetteAleatoire.portions
            }
        });
        await connection.end();
    } catch (error) {
        console.error(error);
        res.status(500).json({error: 'Erreur du serveur'});
    }
});

app.get('/recette', async (req, res) => {
    let recettes = await Recette.findAll();
    res.json(recettes);
});

app.get('/recette/:id', async (req, res) => {
    try {
        let recette = await Recette.findById(req.params.id);
        let recommendations = [];
        let ingredientSplited = recette.ingredientsList.split(', ');
        for (let ingredient of ingredientSplited) {
            let aliment = await findSimilarIngredientsByName(ingredient);
            if (!aliment || aliment.length === 0) continue;
            aliment = aliment[0];
            recommendations.push({
                "original": ingredient,
                "recommendation": {
                    "_id": aliment._id,
                    "product_name": aliment.product_name,
                    "nutriscore_grade": aliment.nutriscore_grade
                }
            });
        }
        res.render('recette', {recipe: recette, recommendations: recommendations});
    } catch (error) {
        console.error('Error in recipe route:', error);
        res.status(500).send('Server Error');
    }
});

app.get('/ingredient', async (req, res) => {
    let aliments = await Ingredient.find();
    res.json(aliments);
});

app.get('/ingredient/:id', async (req, res) => {
    let ingredient = await Ingredient.findById(req.params.id);
    res.render('ingredient', {ingredient: ingredient});
});

app.get('/branded', async (req, res) => {
    let brandeds = await BrandedIngredient.find();
    brandeds = brandeds.map(aliment => {
        return {
            ...aliment._doc,
            servingSize: `${aliment.servingSize} ${aliment.servingSizeUnit}`
        };
    });
    res.json(brandeds);
});

app.get('/branded/:id', async (req, res) => {
    let brandedIngredient = await BrandedIngredient.findById(req.params.id);
    res.render('branded', {brandedIngredient: brandedIngredient});
});

app.post('/cuisiner', async (req, res) => {

    let recette = req.body.recette;
    let preferenceMarqueProduit = req.body.preferenceMarqueProduit;
    let indicateurDeQualiteSuperieurA = req.body.indicateurDeQualiteSuperieurA;

    let formatedResults = [];
    for (let ingredient of recette.ingredients) {

        let matchingIngredients = await findSimilarIngredientsByName(ingredient);

        if (preferenceMarqueProduit)
            matchingIngredients = filterByBrand(matchingIngredients, preferenceMarqueProduit);

        if (indicateurDeQualiteSuperieurA) {
            let nutriScore = indicateurDeQualiteSuperieurA.NutriScore;
            let nova = indicateurDeQualiteSuperieurA.Nova;
            let ecoScore = indicateurDeQualiteSuperieurA.EcoScore;
            matchingIngredients = filterByIngredientsQuality(matchingIngredients, nutriScore, nova, ecoScore);
        }

        console.log("Result: ", matchingIngredients.length);
        let formatedResponse = formatResponse(matchingIngredients);
        //TODO: (SORT) les produits qui les respectent doivent ˆetre dans les premiers produits recommand´es du
        // tableau des ingrédients.
        formatedResults.push({[ingredient]: formatedResponse});
    }

    res.send(formatedResults);
});

function formatResponse(matchingIngredients) {
    return matchingIngredients.map(ingredient => {
        return {
            "nomProduit": ingredient.product_name,
            "indicateurDeQualite": {
                "NutriScore": ingredient.nutriscore_grade,
                "Nova": ingredient.nova_groups,
                "EcoScore": ingredient.ecoscore_score
            },
            "marques": ingredient.brands,
            "categories": ingredient.categories,
        };
    });
}

function filterByIngredientsQuality(unformattedResult, nutriScore, nova, ecoScore) {
    return unformattedResult.filter(aliment =>
        isEcoscoreQualityRespected(ecoScore, aliment.ecoscore_score) &&
        isNutriScoreQualityRespected(nutriScore, aliment.nutriscore_grade) &&
        isNovaGroupQualityRespected(nova, aliment.nova_groups)
    );
}

function isNutriScoreQualityRespected(requiredLevel, alimentLevel) {
    if (isNullValue(requiredLevel)) return true;
    if (requiredLevel && alimentLevel)
        return alimentLevel.toLowerCase() <= requiredLevel.toLowerCase();
    return false;
}

function isEcoscoreQualityRespected(requiredLevel, alimentLevel) {
    if (isNullValue(requiredLevel)) return true;
    if (requiredLevel && alimentLevel)
        return alimentLevel >= requiredLevel;
    return false;
}

function isNovaGroupQualityRespected(requiredLevel, alimentLevel) {
    if (isNullValue(requiredLevel)) return true;
    if (requiredLevel && alimentLevel)
        return parseInt(alimentLevel) <= parseInt(requiredLevel);
    return false;
}

function isNullValue(value) {
    return value === null || value === undefined || value === "" || value === 0;
}

function filterByBrand(result, preferedBrand) {
    return result.filter(resultIngredient =>
        resultIngredient.brands &&
        resultIngredient.brands.toLowerCase().includes(preferedBrand.toLowerCase())
    );
}

async function findSimilarIngredientsByName(ingredient) {
    //Ajouter un espace avant le nom de l'ingrédient pour aider dans la recherche de petit mot qui pourrait être un substring.
    //Pas après pour ne pas tempérer avec les conjuguaisons.
    const regex = new RegExp(" " + ingredient.trim(), 'i'); // i = insensible à la case
    return Ingredient.aggregate([
        {
            $match: {product_name: {$regex: regex}}
        }
    ])
}

app.listen(port, () => {
    console.log(`Serveur en écoute sur le port ${port}`);
});

async function getNumberNutriScore() {
    return await Ingredient.countDocuments({nutriscore_grade: {$ne: null}});
}

async function getNumberNova() {
    return await Ingredient.countDocuments({nova_groups: {$ne: null}});
}

async function getNumberEcoScore() {
    return await Ingredient.countDocuments({ecoscore_score: {$ne: null}});
}

async function getCountByCategory() {
    const result = await Ingredient.aggregate([
        {$unwind: "$categories"},
        {$group: {_id: "$categories", count: {$sum: 1}}},
        {$project: {category: "$_id", count: 1, _id: 0}}
    ]);

    // Transformation pour respecter les spécifications de l'API.
    return result.reduce((acc, {category, count}) => {
        acc[category] = count;
        return acc;
    }, {});
}
