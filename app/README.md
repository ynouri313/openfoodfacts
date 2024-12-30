# OFF 

## 1. Présentation
Ce projet est le résultat d'une recherche sur les données ouvertes de l'Open Food Facts. Il s'agit d'un ensemble de données sur les produits alimentaires du monde entier. L'objectif est de créer un pipeline ETL pour extraire, transformer et charger les données dans des base de données Mysql puis MongoDB. Ensuite, une application Node.js est utilisée pour accéder aux données via API puis pour présenter une interface pour consulter les données transformées.

---

## 2. Features
- **Processus ETL**:
    - Extraction des données à partir de l'API Open Food Facts.
    - Transformation des données pour les rendre exploitables.
    - Chargement des données dans des bases de données MySQL et MongoDB.
- **Base de données MySQL**:
  Stockage des recettes puis des utilusateurs.
- **Base de données MongoDB**:
Stockage des produits alimentaires puis des aliments de marques.
- **Node.js**:
    - API pour accéder aux données.
    - Interface pour consulter les données transformées.

---

## 3. API Endpoints
- `GET /heartbeat` : Informations sur l'application.
  - Réponse : 
  ```json
    {
        "nomApplication": "OFF"
    }
  ```
- `GET /extracted_data` : Statistiques sur les données extraites.
  - Réponse : 
  ```json
    {
      "nbProduitsAlimentairesScannes": 15882,
      "nbProduitsAlimentairesDeBase": 8066,
      "nbRecettesCuisine": 140
    }
  ```
- `GET /transformed_data` : Indicateurs de qualité et catégories d’aliments.
  - Réponse :
  ```json
    {
    "indicateurDeQualite": {
        "NutriScore": 15882,
        "Nova": 9005,
        "EcoScore": 9077
    },
    "categoriesProduitAlimentaire": {
        ...
        "Saskatoon Berry Jam, jams": 1,
        "Haricot au four": 1,
        "Tablette chocolat": 1,
        "Palak paneer": 2,
        ...
      }
    }
  ```
- `GET /type` : Liste des catégories de recettes.
   - Réponse :
   ```json
   [
     "10 ingrédients ou moins",
     "Congelables",
     "Pour enfants",
     "Sans cuisson",
     "Végétarien",
     "30 minutes ou moins"
   ]
   ```
- `POST /recette` : Retourne une recette aléatoire selon des critères.
  - Body :
  ```json
     {
       "categoriesRecette": [
          "Végétarien"
       ]
     }
  ```
  - Réponse:
  ```json
     {
    "recette": {
        "nom": "Congee multigrain avec shiitake, gingembre et oignons verts",
        "ingredientsRecette": [
            "6 champignons shiitakes séchés",
            ...
        ],
        "description": "Le congee est un aliment de base dans de nombreux pays du monde. Il est consommé à tout moment de la journée, mais c'est peut-être au déjeuner qu'il est le plus populaire.  Il est souvent préparé avec un seul type de grains entiers, mais cette variation du plat est préparée avec de nombreuses variétés de grains entiers.",
        "categories": [
            "Végétarien",
            ""
        ],
        "tempsPrep": "15 min",
        "tempsCuisson": "75 min",
        "portions": "4"
      }
  }
  ```
  
- `GET /recette` : Liste de toutes les recettes.
-
- Réponse (format) :
  ```json 
   [
      {
        "id": number,
        "nomRecette": str,
        "imgUrl": str,
        "categoriesRecette": str,
        "tempsPrep": str,
        "tempsCuisson": str,
        "portions": str,
        "ingredientsRecette": str,
        "prepRecette": str,
        "ingredientsList": str,
        "descRecette": str
    },
  ]
  ```
  - Réponse (exemple) :
  ```json 
   [
       {
        "id": 1,
        "nomRecette": "Écorce de yogourt aux petits fruits",
        "imgUrl": "https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-04/Yogurt-bark-web-ready.jpg",
        "categoriesRecette": "10 ingrédients ou moins, Congelables, Pour enfants, Sans cuisson, Végétarien,",
        "tempsPrep": "10 min",
        "tempsCuisson": "180 min",
        "portions": "8 (16 morceaux)",
        "ingredientsRecette": "500 ml (2 tasses) de yogourt nature plus faible en gras,    45 ml (3 c. à table) de sirop d’érable ou de miel,      2 ml (½ c. à thé) d’extrait de vanille, 5 ml (1 c. à thé) de jus de citron,     500 ml (2 tasses) de petits fruits au choix (bleuets, fraises ou une combinaison, etc.)",
        "prepRecette": "Recouvrir une plaque de cuisson de papier ciré (ou de papier parchemin). Mettre de côté. Dans un grand bol, mélanger le yogourt, le sirop d’érable, la vanille et le jus de citron. Fouetter jusqu’à ce que le tout soit bien mélangé. Transférer le mélange de yogourt sur la plaque de cuisson préalablement préparée et l’étaler de manière à obtenir une épaisseur uniforme. Garnir de petits fruits. Congeler pendant 2 à 3 heures ou jusqu’à ce que le mélange soit ferme. Couper ou casser en morceaux et servir immédiatement. Conserver le reste dans un récipient hermétique au congélateur, jusqu’à 2 semaines.",
        "ingredientsList": "yogourt nature,sirop d’érable,miel,extrait de vanille,jus de citron,petits fruits au choix",
        "descRecette": "Cette recette vous permet de savourer le yogourt d’une nouvelle façon. Elle est idéale comme collation rapide ou pour partager avec des amis. Vous pouvez facilement conserver les portions supplémentaires au congélateur jusqu’à 2 semaines."
    },
    ...
  ]
  ```
- `GET /ingredient` : Liste de tous les ingrédients.
- Réponse (format) :
  ```json 
   [
      {
          "_id": str,
          "product_name": str,
          "ecoscore_score": number,
          "nutriscore_grade": str,
          "nova_groups": str,
          "categories": [
              str,
              str,
              ...
          ],
          "brands": str
      }
  ]
  ```
  - Réponse (exemple) :
  ```json 
   [
      {
          "_id": "0013562000500",
          "product_name": "Macaroni & Cheese Classic Cheddar",
          "ecoscore_score": null,
          "nutriscore_grade": "d",
          "nova_groups": "4",
          "categories": [
              "Plant-based foods and beverages, Plant-based foods, Cereals and potatoes, Cereals and their products, Pastas"
          ],
          "brands": "Annie's Homegrown,Annie's"
      },
      ...
  ]
  ```
- `GET /branded` : Liste de tous les aliments de marque.
- Réponse (format) :
  ```json 
   [
      {
          "_id": str,
          "foodClass": str,
          "description": str,
          "foodNutrients":[
             ...
          ],
          "foodAttributes":[
              ...
          ],
          "modifiedDate": str,
          "availableDate":  str,
          "marketCountry": str,
          "brandOwner": str,
          "gtinUpc": str,
          "dataSource": str,
          "ingredients": str,
          "servingSize": str,
          "servingSizeUnit": str,
          "householdServingFullText": str,
          "labelNutrients": {},
         "tradeChannels":[ 
              str,
              str
          ],
          "microbes": array,
          "brandedFoodCategory": str,
          "dataType": str,
          "fdcId": number,
          "publicationDate": str,
          "foodUpdateLog":[
              ...
          ]
      }
  ]
  ```
  - Réponse (exemple) :
    ```json 
     [
        {
            "_id":"67661ba0348b64befb9983dc",
            "foodClass":"Branded",
            "description":"GRANOLA, CINNAMON, RAISIN, CINNAMON, RAISIN",
            "foodNutrients":[
               ...
            ],
            "foodAttributes":[
                ...
            ],
            "modifiedDate":"4/26/2020",
            "availableDate":"4/26/2020",
            "marketCountry":"United States",
            "brandOwner":"MICHELE'S",
            "gtinUpc":"1633636543505",
            "dataSource":"LI",
            "ingredients":"ORGANIC ROLLED OATS, ORGANIC UNSWEETENED COCONUT, ORGANIC BROWN SUGAR, ORGANIC SEEDLESS RAISINS, SUNFLOWER SEEDS, WALNUTS, EXPELLER-PRESSED NON-GMO CANOLA OIL, FILTERED WATER, PURE VANILLA EXTRACT, SPICES, SEA SALT.",
            "servingSize":"28 g",
            "servingSizeUnit":"g",
            "householdServingFullText":"0.25 cup",
            "labelNutrients":{
               ...
            },
           "tradeChannels":[
              "NO_TRADE_CHANNEL"
          ],
          "microbes":[],
          "brandedFoodCategory":"Cereal",
          "dataType":"Branded",
          "fdcId":1106281,
          "publicationDate":"11/13/2020",
          "foodUpdateLog":[
              ...
          ]
      }
    ]
    ```

- `POST /cuisiner` : Recommandations d'ingrédients selon critères (qualité, marque).
  - Body :
  ```json
     {
        "recette": {
        "nom": "",
        "ingredients": [
            "blé",
            "riz"
        ],
        "description": ""
     },
        "preferenceMarqueProduit": "",
        "indicateurDeQualiteSuperieurA": {
            "NutriScore": "b"
        }
  }   
  ```
  - Réponse (format):
  ```json
   [
      {
          $cleString: [
              {
                  "nomProduit": str,
                  "indicateurDeQualite": {
                      "NutriScore": str,
                      "Nova": str,
                      "EcoScore": number
                  },
                  "marques": str,
                  "categories": str
            },
            ...
           ]
        },
        {
            "riz": [
                {
                    "nomProduit": str,
                    "indicateurDeQualite": {
                        "NutriScore": str,
                        "Nova": str,
                        "EcoScore": number
                    },
                    "marques": str,
                    "categories": str
                },
                ...
            ]
        }
    ]
  ```
  - Réponse :
  ```json
   [
      {
          "blé": [
              {
                  "nomProduit": "Villaggio - Blé entier",
                  "indicateurDeQualite": {
                      "NutriScore": "a",
                      "Nova": "4",
                      "EcoScore": 77
                  },
                  "marques": "Villagio",
                  "categories": "Aliments et boissons à base de végétaux, Aliments d'origine végétale, Céréales et pommes de terre, Pains, Pains de mie, Whole wheat bread"
            },
            ...
           ]
        },
        {
            "riz": [
                {
                    "nomProduit": "Boisson De Riz Biologique Enrichie Vanille",
                    "indicateurDeQualite": {
                        "NutriScore": "b",
                        "Nova": "4",
                        "EcoScore": 59
                    },
                    "marques": "Natura",
                    "categories": "Aliments et boissons à base de végétaux, Boissons, Aliments d'origine végétale, Céréales et pommes de terre, Substituts de produits laitiers, Céréales et dérivés, Substituts du lait, Boissons à base de végétaux, Boissons végétales, Boissons végétales de céréales, Boissons au riz, Boissons végétales de riz à la vanille"
                },
            
            ]
        }
    ]
  ```
  

---

## 4. Déploiement
Pour déployer l'application avec Docker, utilisez le fichier `docker-compose.yml` fourni. Cette configuration permet de construire les images nécessaires et de lancer tous les services en arrière-plan.

- Commande pour déployer l'application :
  ```bash
  docker-compose up --build -d

---
## 5. Interface Utilisateurs
L'application offre une interface web conviviale accessible depuis [http://localhost](http://localhost). Voici un aperçu des principales pages :

- **Page d'accueil** : Accueil général avec un aperçu des fonctionnalités principales.
- **Recherche de recettes (`/search_recettes`)** : Permet de chercher des recettes disponibles dans la base de données en fonction de critères spécifiques.
- **Recherche d'ingrédients (`/search_ingredients`)** : Fournit une interface pour explorer les différents ingrédients extraits et transformés.
- **Recherche par marque (`/search_branded`)** : Accède aux produits alimentaires spécifiques de marques référencées.

Ces pages facilitent l'interaction et la visualisation des données transformées issues de l'ETL.

---
## 6. Authentification
L'application inclut un système d'authentification pour sécuriser certaines fonctionnalités. Pour accéder aux pages protégées, connectez-vous à l'application via [la page de connexion](http://localhost/login).

- **Identifiants de connexion par défaut** :
    - **Nom d'utilisateur** : `prof`
    - **Mot de passe** : `prof`
