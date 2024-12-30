# OFF 

## 1. Presentation
This project is the result of open data research into Open Food Facts. This is a dataset of food products from around the world. The aim is to create an ETL pipeline to extract, transform and load the data into Mysql and MongoDB databases. Then, a Node.js application is used to access the data via API, and to present an interface for consulting the transformed data.

---

## 2. Features
- **ETL Process**:
    - Data extraction from the Open Food Facts API.
    - Transformation of data to make it usable.
    - Load data into MySQL and MongoDB databases.
- **MySQL DB**:
  Storage of recipes and users.
- **MongoDB DB**:
  Storage of food products, then branded foods.
- **Node.js**:
    - API to access data.
    - Interfaces for viewing transformed data.

---

## 3. API Endpoints
- `GET /heartbeat` : application heartbeat.
  - Response : 
  ```json
    {
        "ApplicationName": "OFF"
    }
  ```
- `GET /extracted_data` : Statistics on extracted data.
  - Response : 
  ```json
    {
      "nbScannedFoodProducts": 15882,
      "nbBasicFoodProducts": 8066,
      "nbCookingRecipes": 140
    }
  ```
- `GET /transformed_data` : Quality indicators and food categories.
  - Response :
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
- `GET /type` : List of recipe categories.
   - Response :
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
- `POST /recette` : Returns a random recipe according to criteria.
  - Body :
  ```json
     {
       "categoriesRecette": [
          "Végétarien"
       ]
     }
  ```
  - Response:
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
  
- `GET /recette` : Returns all recipes.
-
- Response (format) :
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
  - Response (exemple) :
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
- `GET /ingredient` : List of all ingredients.
- Response (format) :
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
  - Response (exemple) :
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
- `GET /branded` : List of all branded foods.
- Response (format) :
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
  - Response (exemple) :
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

- `POST /cuisiner` : Ingredient recommendations based on criteria (quality, brand).
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
  - Response (format):
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
  - Response :
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

## 4. Deployment
To deploy the application with Docker, use the `docker-compose.yml` file supplied. This configuration allows you to build the necessary images and run all services in the background.

- Command to deploy the application :
  ```bash
  docker-compose up --build -d

---
## 5. User interfaces
The application features a user-friendly web interface accessible from [http://localhost](http://localhost). Here is an overview of the main pages:

- **Home page** : Home page with an overview of the main functions.
- **Search recipes (`/search_recettes`)** : Search for recipes available in the database according to specific criteria.
- **Search Ingredients (`/search_ingredients`)** : Provides an interface for exploring different extracted and processed ingredients.
- **Search Branded (`/search_branded`)** : Access to specific food products from referenced brands.

These pages facilitate the interaction and visualization of transformed data from ETL.

---
## 6. Authentication
The application includes an authentication system to secure certain functions. To access protected pages, log in to the application via [the login page](http://localhost/login).

- **Default login credentials** :
    - **Username** : `prof`
    - **Password** : `prof`
