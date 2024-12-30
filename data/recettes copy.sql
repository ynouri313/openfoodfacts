-- Set the database encoding to UTF-8
SET character_set_client = utf8;

SET character_set_results = utf8;

SET character_set_connection = utf8;
ALTER DATABASE recettes CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE IF NOT EXISTS recettes(
   id                 INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,nomRecette         TEXT NOT NULL
  ,ingredientsRecette TEXT NOT NULL
  ,imgUrl             TEXT NOT NULL
  ,ingredientsList	  TEXT NOT NULL
);
ALTER TABLE recettes CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (116,'Salade ynooo',' 
            1 grand concombre, tranché
	15 ml (1 c. à table) d''aneth frais haché ou 2 ml (½ c. à thé) d''aneth séché
	1 ml (¼ c. à thé) de poivre moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/chickpea_carrot_salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (1,'Salade de pois chiches et de carottes',' 
            1 grand concombre, tranché
	15 ml (1 c. à table) d''aneth frais haché ou 2 ml (½ c. à thé) d''aneth séché
	2 carottes, épluchées et râpées
	1 boîte (540 ml/19 oz) de pois chiches, égouttés et rincés
	500 ml (1 tasse) de tomates cerise, coupées en deux dans le sens de la longueur
	60 ml (¼ tasse) de basilic frais haché
	45 ml (3 c. à table) de vinaigre balsamique
	15 ml (1 c. à table) de pesto de basilic
	10 ml (2 c. à thé) d''huile d''olive extra vierge
	1 gousse d''ail, émincée
	1 ml (¼ c. à thé) de poivre moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/chickpea_carrot_salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (2,'Pain aux bananes et aux noix de Grenoble',' 
            2 œufs
	85 ml (⅓ tasse) de sirop d''érable
	5 ml (1 c. à thé) d''extrait de vanille
	125 ml (½ tasse) d''huile végétale
	3 bananes, écrasées
	250 ml (1 tasse) de farine de blé entier
	190 ml (¾ tasse) de farine tout usage
	5 ml (1 c. à thé) de bicarbonate de soude
	5 ml (1 c. à thé) de cannelle
	1 ml (¼ c. à thé) de sel
	250 ml (1 tasse) de noix de Grenoble non salées, grillées et hachées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Banana%20loaf%203.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (3,'Truite avec légumes rôtis et relish d’airelles',' 
10 ml (2 c. à thé) de moutarde de Dijon
	30 ml (2 c. à soupe) de sirop d’érable
	2 ml (½ c. à thé) de sauce Worcestershire
	15 ml (1 c. à soupe) d’huile d’olive
	5 ml (1 c. à thé) de poudre d’ail
	2 ml (½ c. à thé) de thym séché
	4 filets de truite frais (environ 700 g)
	3 pommes de terre, coupées en quartiers minces
	500 ml (2 tasses) fleurons de brocoli
	1 oignon, coupé en dés
	1 poivron, coupé en dés
Relish d''airelles :
250 ml (1 tasse) d’airelles 
	125 ml (½ tasse) d’eau
	15 ml (1 c. à soupe) de vinaigre blanc 
	1 ml (¼ c. à thé) de sauge moulue
	125 ml (½ tasse) de raisins secs, hachés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Trout%20with%20low%20bush%20cranberry%20relish-HERO.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (4,'Nachos aux pommes avec sauce au caramel et au beurre d’arachides',' 
            Sauce au beurre d’arachide et au caramel :
125 ml (½ tasse) de beurre d’arachide crémeux ou une alternative sans noix
60 ml (¼ tasse) de sirop d’érable ou de sirop de bouleau
60 ml (¼ tasse) d’eau
2 ml (½ c. à thé) de vanille
1 ml (¼ c. à thé) de sel (facultatif)
Nachos aux pommes:
2 pommes moyennes, évidées et tranchés finement
125 ml (½ tasse) de yogourt grec nature faible en gras
60 ml (¼ tasse) de sauce au beurre d’arachide et au caramel
30 ml (2 c. à table) de graines de tournesol (facultatif)
1 ml (¼ c. à thé) de cannelle (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-08/applenachos6-edit-wide.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (5,'Tortillas de farine de blé entier',' 
            625 ml (2 ½ tasses) de farine de blé entier
	1 ml (¼ c. à thé) de sel (facultatif)
	10 ml (2 c. à thé) de bicarbonate de soude
	250 ml (1 tasse) d’eau chaude
	60 ml (¼ tasse) d’huile végétale
	Au besoin, farine de blé entier (pour saupoudrer)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-08/Stack%20Tortillas.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (6,'Frittatas caprese en forme de muffins',' 
            6 œufs
	85 ml (⅓ tasse) de lait écrémé ou de boisson végétale enrichie non sucrée
	2 ml (½ c. à thé) de sel
	2 ml (½ c. à thé) de poivre
	2 tomates, coupées en dés
	5 ml (1 c. à thé) de basilic séché
	125 ml (½ tasse) de mozzarella râpée plus faible en gras','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-11/Capresse%20muffin-tin%20frittatas.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (7,'Roulés à la laitue et au poulet au cari',' 
            750 ml (3 tasses) de blancs de poulet cuit, déchiqueté ou en dés
	2 ½ branches de céleri, en dés
	125 ml (½ tasse) de canneberges séchées
	125 ml (½ tasse) d’amandes effilées
	15 ml (1 c. à table) de jus de citron (environ ½ citron)
	5 ml (1 c. à thé) de poudre de cari moyen
	125 (½ tasse) de mayonnaise légère
	5 ml (1 c. à thé) de poudre d’ail
	10 grandes feuilles de laitue (la laitue grasse est idéale)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-04/chicken%20lettuce%20wrap-heroweb-ready.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (8,'Poisson-frites au four',' 
            Frites au four : 
1 patate douce, coupée en lanières
	2 panais, coupés en lanières
	5 ml (1 c. à thé) d’huile végétale
	2 ml (½ c. à thé) poudre de chili
Poisson en croûte d’amandes :
125 ml (½ tasse) d''amandes entières
	180 ml (¾ tasse) de chapelure de grains entiers
	10 ml (2 c. à thé) d''origan séché
	1 œuf
	30 ml (2 c. à table) d''eau 
	60 ml (¼ tasse) de farine de blé entier
	10 ml (2 c. à thé) de paprika 
	454 g (1 lb) de filets de tilapia
	2 ml (½ c. à thé) de sel (facultatif)
	2 ml (½ c. à thé) de poivre noir 
	1 citron, coupé en quartiers','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-06/Fish%20and%20Chips%20Hero.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (9,'Salade Cobb et vinaigrette ranch',' 
            Vinaigrette ranch :
125 ml (½ tasse) de yogourt grec nature 0 %
	30 ml (2 c. à table) d''eau
	10 ml (2 c. à thé) de vinaigre blanc
	2 ml (½ c. à thé) de poudre d''ail
	2 ml (½ c. à thé) de poudre d''oignon
	4 ml (¾ c. à thé) aneth séché
	2 ml (½ c. à thé) de persil séché
	1 ml (¼ c. à thé) de ciboulette séchée 
	1 ml (¼ c. à thé) de poivre noir
	pincée de sel (facultatif)
	7 ml (½ c. à table) de jus de citron (environ ¼ citron) 
Salade :
1 boîte (540 ml/19 oz) de pois chiches, égouttés et rincés 
	22 ml (1 ½ c. à table) d''huile végétale
	2 ml (½ c. à thé) de paprika 
	4 œufs
	1 L (4 tasses) de laitue hachée 
	1 avocat, coupé en dés 
	250 ml (1 tasse) de tomates coupés en dés
	60 ml (¼ tasse) d''oignon rouge coupé en dés  
	125 ml (½ tasse) de maïs
	80 ml (⅓ tasse) de fromage cheddar râpé plus faible en gras','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-06/Cobb%20Salad%20Hero.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (10,'Tajine aux champignons',' 
500 ml (2 tasses) de champignons blancs ou cremini
	30 ml (2 c. à soupe) d''huile de pépins de raisin ou de tournesol
	1 oignon, pelé et tranché finement 
	1 gousse d''ail, pelée et écrasée
	15 ml (1 c. à soupe) de ras el hanout (utilisez un mélange d''épices acheté en magasin ou préparez le vôtre en suivant la recette ci-dessous)
	Une pincée de safran 
	500 ml (2 tasses) de tomates broyées fraîches ou en conserve, hachées
	60 ml (¼ tasse) de raisins de Corinthe ou de raisins secs 
	500 ml (2 tasses) d''eau
	5 brins de persil plat, hachés grossièrement avec les tiges
	Sel au goût
Ras El Hanout :
15 ml (1 c. à soupe) cumin moulu
	15 ml (1 c. à soupe) cardamome moulue
	15 ml (1 c. à soupe) gingembre moulu
	7 ml (½ c. à soupe) poivre noir moulu
	7 ml (½ c. à soupe) cannelle moulue
	7 ml (½ c. à soupe) paprika
	7 ml (½ c. à soupe) graines de coriandre moulues
	7 ml (½ c. à soupe) cayenne
	7 ml (½ c. à soupe) piment de la Jamaïque moulu
	7 ml (½ c. à soupe) clous de girofle moulus','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2024-04/Mushroom%20Tagine%20-%20HERO%20%28web-ready%29%20edit.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (11,'Nouilles au gingembre et aux oignons verts',' 
            500 ml (2 tasses) d’oignons verts, racines coupées, tranchés finement (environ 2 bottes) 
	125 ml (½ tasse) de gingembre frais, pelé et haché
	15 ml (1 c. à table) d’huile végétale 
	15 ml (1 c. à table) de sauce soya plus faible en sodium
	5 ml (1 c. à thé) de vinaigre de riz
	1 paquet (454 g) de nouilles de riz brun non cuites','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2023-02/GINGER%20NOODLES_hero%20shot.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (12,'Cari de patates douces',' 
            30 ml (2 c. à table) d’huile végétale, divisée
	5 ml (1 c. à thé) de graines de moutarde noire
	3 piments rouges entiers séchés
	4 feuilles de cari (margousier) fraîches ou séchées
	1 oignon, coupé en petits dés
	2 gousses d’ail, finement hachées
	3 patates douces, pelées et coupées en dés de 1 pouce
	1 petite poignée de coriandre fraîche, finement hachée (environ 60 ml/¼ tasse)
	Sel au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-12/SWEET%20POTATO%20CURRY_hero%20shot.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (13,'Gruau aux petits fruits et au chocolat préparé la veille',' 
            335 ml (1 ⅓ tasse) de flocons d’avoine
	250 ml (1 tasse) de lait écrémé ou de boisson végétale enrichie non sucrée
	85 ml (⅓ tasse) de yogourt grec nature 0 %
	1 banane mûre, écrasée (environ 125 ml/½ tasse)
	20 ml (4 c. à thé) de sirop d’érable ou de cassonade
	15 ml (1 c. à table) de poudre de cacao
	250 ml (1 tasse) de framboises fraîches ou surgelées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-12/chocolate%20overnight_hero.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (14,'Salade de haricots noirs et de maïs',' 
            Salade :
1 boîte (540 ml/19 oz) de haricots noirs en conserve sans sel ajouté, rincés et égouttés
	1 boîte (540 ml/19 oz) de grains de maïs sans sel ajouté, rincés et égouttés
	2 tomates, hachées finement
	1 poivron rouge, en dés
	60 ml (¼ tasse) de coriandre, hachée
	190 ml (¾ tasse) de poulet cuit, en dés
Vinaigrette :
15 ml (1 c. à table) de jus de lime (environ ½ lime)
	15 ml (1 c. à table) d’huile d’olive
	2 ml (½ c. à thé) de cumin moulu
	2 ml (½ c. à thé) de poudre d’ail
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-12/BlackBeanCornSaladHero.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (15,'Lentilles braisées avec légumes verts',' 
            500 ml (2 tasses) de lentilles brunes ou vertes séchées
	45 ml (3 c. à soupe) d’huile d’olive
	5 gousses d’ail, écrasées et hachées
	1 botte de bettes à cardes, tiges enlevées et finement tranchées, et les feuilles tranchées très finement (environ 1 l /4 tasses)
	1 botte de coriandre, feuilles et quelques tiges, très finement hachées (environ 250 ml/1 tasse)
	45 ml (3 c. à soupe) de jus de citron (environ 1 citron)
	45 ml (3 c. à soupe) de mélasse de grenade
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-11/BRAISED%20LENTILS_hero%20shot.web_.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (16,'Cari de chou frisé et de pois chiches',' 
            30 ml (2 c. à soupe) d’huile végétale
	1 piment vert, finement haché
	2 gousses d’ail, pelées et finement coupées
	5 ml (1 c. à thé) de graines de cumin
	1 oignon, pelé et finement haché
	750 ml (3 tasses) de feuilles de chou frisé, tiges enlevées et finement hachées, feuilles déchirées
	5 ml (1 c. à thé) de coriandre moulue
	2 ml (½ c. à thé) de poudre de curcuma
	2 ml (½ c. à thé) de poudre de poivre de Cayenne
	1 boîte (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés
	100 ml (⅓ tasse + 1 c. à soupe) de lait de coco allégé
	Sel au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-09/KALE%20CURRY_hero%20shot.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (17,'Soupe de poisson fumé et de maïs lessivé blanc',' 
            20 ml (1 ½ c. à table) d''huile de tournesol 
	125 ml (½ tasse) de poireaux sauvages ou du commerce hachés finement
	15 ml (1 c. à table) de sauge fraîche hachée
	15 ml (1 c. à table) de menthe fraîche hachée
	4 filets de poisson fumé (environ 200 g)
	30 ml (2 c. à table) de sirop d''érable, divisé
	1 ½ à 2 l (6 à 8 tasses) d''eau 
	1 ½ boîte de conserve (1 ½ x 540 ml/19 oz) de maïs lessivé blanc','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Fish%20Soup%20-%20HERO.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (18,'Riz sauvage frit',' 
            1 tasse (250 ml) de riz sauvage non cuit
	15 ml (1 c. à table) d''huile de tournesol
	5 ml (1 c. à thé) de gingembre sauvage, finement coupé en dés
	5 ml (1 c. à thé) d''ail sauvage, finement coupé en dés
	60 ml (¼ tasse) d’ail des bois, partie blanche et vert clair seulement, finement coupé en dés
	250 ml (1 tasse) de grains de maïs sucré en conserve
	85 ml (⅓ tasse) de canneberges séchées
	15 ml (1 c. à table) de sauce soja
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Fried%20Wild%20Rice%20-%20HERO_1.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (19,'Pain de maïs',' 
            30 ml (2 c. à table) de crème sure plus faible en gras
	310 ml (1 ¼ tasse) de lait plus faible en gras ou de boisson végétale enrichie non sucrée
	60 ml (¼ tasse) d''huile de tournesol
	2 œufs
	335 ml (1 ⅓ tasses) de farine de blé entier 
	165 ml (⅔ tasse) de semoule de maïs à mouture moyenne
	165 ml (⅔ tasse) de sucre granulé
	15 ml (1 c. à table) de poudre à pâte
	2 ml (½ c. à thé) de sel','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/cornbread%20-%20HERO.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (20,'Muffins à la semoule de maïs et aux bleuets',' 
            190 ml (¾ tasse) de lait entier
	15 ml (1 c. à table) de jus de citron  
	375 ml (1 ½ tasse) de farine de blé entier
	125 ml (½ tasse) de semoule de maïs jaune
	125 ml (½ tasse) de sucre
	10 ml (2 c. à thé) de poudre à pâte
	5 ml (1 c. à thé) de sel
	250 ml (1 tasse) de bleuets frais ou congelés 
	2 œufs
	7 ml (½ c. à table) d''extrait de vanille 
	125 ml (½ tasse) de crème sure
	Zeste d''un citron (environ 7 ml/½ c. à table)
	125 ml (½ tasse) d''huile de tournesol','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Cornmeal%20Muffin%20-%20HERO.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (21,'Beignets de lentilles et d’épinards au cari',' 
            125 ml (½ tasse) de lentilles rouges fendues non cuites
	125 ml (½ tasse) d''épinards, hachés finement 
	1 œuf
	5 ml (1 c. à thé) de poudre de cari
	1 ml (¼ c. à thé) de poivre noir
	15 ml (1 c. à soupe) de poudre d''oignon 
	2 ml (½ c. à thé) de poudre d''ail
	2 ml (½ c. à thé) de bicarbonate de soude
	125 ml (½ tasse) de yogourt faible en gras
	85 ml (⅓ tasse) de farine de blé entier 
	15 ml (1 c. à soupe) d''huile végétale 
Trempette au concombre : 
½ concombre de grande taille
	125 ml (½ tasse) de yogourt faible en gras
	1 ml (¼ c. à thé) de cumin 
	1 ml (¼ c. à thé) de poudre de chili
	Sel au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Lentil%20and%20Spinach%20Fritters.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (22,'Coquilles de pâtes au tofu et à la courge musquée',' 
375 ml (1 ½ tasse) de noix de cajou non salées
	750 ml (3 tasses) d''eau
	15 ml (1 c. à soupe) d''huile végétale
	1 oignon, coupé en dés
	2 gousses d''ail, émincées
	1 l (4 tasses) de cubes de courge musquée surgelés
	750 ml (3 tasses) d''épinards surgelés
	5 ml (1 c. à thé) de sel
	1 ml (¼ c. à thé) de poivre noir
	1 paquet (400 g/14 oz) de tofu ferme, émietté
	1 citron, jus et zeste
	7 ml (1 ½ c. à thé) d''origan séché
	1 ml (¼ c. à thé) de flocons de piment chili rouge
	1 paquet (340 g) de coquilles de pâtes de blé entier gros format
	125 ml (½ tasse) de fromage mozzarella râpé plus faible en gras','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Tofu%20and%20Butternut%20Squash%20Stuffed%20Shells.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (23,'Cari de tofu masala',' 
            15 ml (1 c. à soupe) d''huile végétale
	1 oignon, haché
	8 gousses d''ail, émincées
	30 ml (2 c. à soupe) de gingembre émincé
	10 ml (2 c. à thé) de cumin
	10 ml (2 c. à thé) de paprika
	10 ml (2 c. à thé) de poudre de chili
	10 ml (2 c. à thé) garam masala
	10 ml (2 c. à thé) de coriandre
	2 ml (½ c. à thé) de sel
	1 boîte (796 ml/28 oz) de tomates en dés
	250 ml (1 tasse) d''eau
	85 ml (⅓ tasse) de lait de coco
	1 paquet (400 g/14 oz) de tofu extra ferme, coupé en dés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Tofu%20Masala%20curry.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (24,'Soupe aux tomates et aux poivrons rôtis avec haricots',' 
4 poivrons rouges
	12 tomates, coupées en quartiers
	30 ml (2 c. à soupe) d''huile d''olive
	5 ml (1 c. à thé) de poivre noir, divisé
	45 ml (3 c. à soupe) d''huile végétale, divisée
	2 oignons, hachés
	5 gousses d''ail, émincées
	5 ml (1 c. à thé) d''origan séché
	5 ml (1 c. à thé) de sel
	1 l (4 tasses) de bouillon de légumes faible en sodium
	2 boîtes (540 ml/19 oz chacune) de haricots blancs faible en sodium, égouttés et rincés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Roasted%20Tomato%20and%20Pepper%20Soup.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (25,'Salade de pêches, de pois chiches grillés et de fromage halloumi',' 
30 ml (2 c. à soupe) d''huile d''olive, divisée
	1 boîte (540 ml/19 oz) de pois chiches faible en sodium, égouttés et rincés
	2 ml (½ c. à thé) de paprika
	5 ml (1 c. à thé) de thym séché
	5 ml (1 c. à thé) de poudre d''ail
	3 pêches, coupées en quartiers
	½ paquet (100 g/3.5 oz) de fromage halloumi, tranché
	500 ml (2 tasses) de tomates cerises, coupées en deux
	1 ml (¼ c. à thé) de basilic séché
	15 ml (1 c. à soupe) de jus de citron (environ ½ citron)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Grilled%20Halloumi%20and%20Peach%20Salad%202.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (26,'Soupe miso aux nouilles ramen avec œufs marinés',' 
            Œufs marinés au soya :
4 œufs
	3 gousses d''ail, écrasées
	2 ml (½ c. à thé) de flocons de piment rouge
	125 ml (½ tasse) de sauce soya faible en sodium
	30 ml (2 c. à soupe) de sirop d''érable
	20 ml (1 ½ c. à soupe) de vinaigre de riz
	500 ml (2 tasses) d''eau
Soupe au miso :
20 ml (1 ½ c. à soupe) d''huile de sésame
	2 gousses d''ail, émincées
	20 ml (1 ½ c. à soupe) de gingembre émincé
	1 l (4 tasses) de bouillon de légumes faible en sodium
	500 ml (2 tasses) d''eau
	45 ml (3 c. à soupe) de pâte de miso blanche
	5 champignons, tranchés
	1 carotte, tranchée finement
	225 g/8 oz de tofu ferme, coupé en cubes
	1 paquet (400g/14 oz) de nouilles ramen de blé entier
	2 oignons verts, tranchés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Miso%20Ramen.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (27,'Salade de pois chiches au cari',' 
1 boîte (540 ml/19 oz) de pois chiches faible en sodium, égouttés et rincés
	45 ml (3 c. à soupe) de yogourt faible en gras
	60 ml (¼ tasse) de céleri coupé en dés
	¼ oignon rouge, émincé
	60 ml (¼ tasse) de raisins secs
	1 tomate, coupée en dés
	2 ml (½ c. à thé) de poudre de cari
	15 ml (1 c. à soupe) de confiture d''abricots (optionnel)
	7 ml (½ c. à soupe) de jus de citron (environ ½ citron)
	1 ml (¼ c. à thé) de poivre noir
	Une pincée de sel','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Curried%20Chickpea%20Salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (28,'Soupe au maïs et aux lentilles',' 
500 ml (2 tasses) de lentilles rouges cassées crues
	45 ml (3 c. à soupe) d''huile végétale
	2 oignons, hachés
	4 gousses d''ail, émincées
	2 ml (½ c. à thé) de curcuma moulu
	7 ml (½ c. à soupe) de sel
	5 ml (1 c. à thé) de poivre noir
	1 l (4 tasses) de bouillon de légumes faible en sodium
	750 ml (3 tasses) d''eau
	30 ml (2 c. à soupe) de gingembre haché
	500 ml (2 tasses) de maïs surgelés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Corn%20and%20Lentil%20soup.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (29,'Salade de cantaloup et de fromage bocconcini',' 
30 ml (2 c. à soupe) de jus de lime (environ 1 lime)
	20 ml (1 ½ c. à soupe) d''huile d''olive
	2 ml (½ c. à thé) de sel
	1 ml (¼ c. à thé) de poivre noir
	30 ml (2 c. à soupe) de menthe fraîche hachée
	1 cantaloup, coupé en petits dés
	125 ml (½ tasse) de fromage bocconcini haché
	250 ml (1 tasse) de tomates cerises, coupées en deux
	60 ml (¼ tasse) d''oignon tranché finement
	60 ml (¼ tasse) d''amandes non salées, grillées et grossièrement hachées
	60 ml (¼ tasse) de graines de citrouille non salées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Cantaloupe%20and%20Bocconcini%20Salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (30,'Casserole aux petits fruits pour le brunch',' 
125 ml (½ tasse) de farine de blé entier
	125 ml (½ tasse) de farine tout usage
	310 ml (1 ¼ tasse) de lait faible en gras ou de boisson végétale enrichie non sucrée
	4 œufs
	5 ml (1 c. à thé) d''extrait de vanille
	20 ml (1 ½ c. à soupe) de miel
	10 ml (2 c. à thé) de margarine non hydrogénée
	45 ml (3 c. à soupe) d''huile végétale
	375 ml (1 ½ tasse) de petits fruits surgelés
	125 ml (½ tasse) d''amandes, effilées ou hachées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-02/Berry%20brunch%20bake.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (31,'Salade de concombres écrasés',' 
2 gros concombres, coupés en rondelles de 1,5 cm/2 po
	20 ml (1 ½ c. à table) de sauce soya plus faible en sodium 
	15 ml (1 c. à table) de riz de vinaigre
	15 ml (1 c. à table) d’huile de sésame 
	1 ml (¼ c. à thé) de poudre d’ail
	Pincée de poivre noir
	Pincée de sel
	10 ml (2 c. à thé) de graines de sésame
	2 feuilles de nori, écrasées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-01/Cucumber%20Smash%20Salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (32,'Gruau de semoule de maïs avec confiture de fruits',' 
1 l (4 tasses) d''eau d''érable 
	500 ml (2 tasses) de semoule de maïs jaune, mouture moyenne 
	1 l (4 tasses) de petits fruits frais ou surgelés
	250 ml (1 tasse) d''eau
	30 ml (2 c. à soupe) de sucre
	20 ml (4 c. à thé) de sirop d''érable','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-01/Cornmeal%20Porridge%20-%20HERO.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (33,'Bol de riz au tofu',' 
            Marinade rapide :
1 carotte
	3 radis, tranchés finement
	250 ml (1 tasse) d''eau
	125 ml (½ tasse) de vinaigre blanc
	3 gousses d''ail
	2 ml (½ c. à thé) de poivre noir
	15 ml (1 c. à table) de sel
	15 ml (1 c. à table) de sucre
Tofu émietté :
375 ml (1 ½ tasse) de riz brun non cuit
	15 ml (1 c. à table) d''huile de sésame
	10 ml (2 c. à thé) de gingembre râpé
	1 paquet (400 g/14 oz) de tofu ferme, émietté
	30 ml (2 c. à table) de sauce hoisin
	15 ml (1 c. à table) de jus de lime (environ ½ lime)
	30 ml (2 c. à table) de sauce soya faible en sodium
	2 ml (½ c. à thé) de basilic séché
	45 ml (3 c. à table) d''eau
Vinaigrette sriracha :
5 ml (1 c. à thé) de sauce sriracha
	85 ml (⅓ tasse) de yogourt grec faible en gras
	5 ml (1 c. à thé) de jus de lime
Pour servir :
½ gros concombre, tranché
	½ poivron, coupé en fines lanières
	½ botte de coriandre (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Tofu%20Bahn%20Mi%20Rice%20Bowl.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (34,'Tarte feuilletée aux petits fruits et au tofu',' 
            375 ml (1 ½ tasse) de petits fruits mélangés surgelés
	30 ml (2 c. à table) de fécule de maïs
	1 paquet (300 g/10.5 oz) de tofu mou
	15 ml (1 c. à table) de miel
	5 ml (1 c. à thé) d''extrait de vanille
	1 feuille (225 g/8 oz) de pâte feuilletée, décongelée
	125 ml (½ tasse) de graines de citrouille non salées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Tofu%20berry%20sheet%20tart%202.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (35,'Croquettes de tempeh',' 
            20 ml (1 ½ c. à table) d''huile végétale
	1 paquet (250 g/9 oz) de tempeh, coupé en 16 tranches
	190 ml (¾ tasse) d''eau
	1 œuf
	125 ml (½ tasse) de chapelure
	5 ml (1 c. à thé) de paprika
	5 ml (1 c. à thé) de poudre d''oignon
	5 ml (1 c. à thé) de poudre d''ail
	1 ml (¼ c. à thé) de sel
	2 ml (½ c. à thé) de poivre noir
Trempette au chipotle :
60 ml (¼ tasse) de yogourt plus faible en gras
	2 ml (½ c. à thé) de poudre de chipotle ou de paprika
	1 gousse d''ail, émincée
	1 ml (¼ c. à thé) de sel','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Tempeh%20nuggets.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (36,'Barres soufflées',' 
1 l (4 tasses) de blé, de riz ou de kamut soufflé
	45 ml (3 c. à table) de graines de chia
	60 ml (¼ tasse) de graines de citrouille non salées
	45 ml (3 c. à table) de pépites de cacao ou de mini pépites de chocolat
	85 ml (⅓ tasse) de beurre d''arachide ou d''amande naturel ou une alternative sans noix
	85 ml (⅓ tasse) de miel','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Fruit%20and%20Nut%20Puffed%20Kamut%20Squares.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (37,'Nouilles soba avec tempeh',' 
Sauce au beurre d’arachide :
60 ml (¼ tasse) de beurre d’arachide ou d’amande ou une alternative sans noix
	5 ml (1 c. à thé) de gingembre émincé
	2 gousses d''ail, émincées
	45 ml (3 c. à table) de vinaigre de riz
	40 ml (2 ½ c. à table) de sauce soya faible en sodium
	10 ml (2 c. à thé) d''huile de sésame
Tempeh et nouilles :
2 ml (½ c. à thé) de flocons de chili rouge (optionnel)
	45 ml (3 c. à table) d''huile végétale
	1 paquet (250 g/9 oz) de tempeh, coupé en dés
	250 ml (1 tasse) de poivron rouge tranché
	250 ml (1 tasse) d''edamames surgelés
	250 ml (1 tasse) de carotte tranchée finement
	225 g/8 oz de nouilles de sarrasin (soba)
	5 ml (1 c. à thé) de graines de sésame (optionnel)
	45 ml (3 c. à table) d''arachides non salées, grillées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Oodles%20of%20Noodles%20with%20Tempeh.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (38,'Trempette muhammara (poivron rouge et noix de Grenoble)',' 
2 poivrons rouges
	125 ml (½ tasse) de noix de Grenoble non salées, divisées
	15 ml (1 c. à table) d''huile d''olive
	1 gousse d''ail
	2 ml (½ c. à thé) de sel
	1 ml (¼ c. à thé) de paprika
	2 ml (½ c. à thé) de miel
	30 ml (2 c. à table) de chapelure','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Middle%20Eastern%20Muhumrara.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (39,'Sauce bolognaise aux lentilles',' 
            15 ml (1 c. à table) d''huile végétale
	1 oignon, haché
	125 ml (½ tasse) de céleri coupé en petits dés
	125 ml (½ tasse) de carotte râpée
	3 gousses d''ail, émincées
	15 ml (1 c. à table) de pâte de tomates
	750 ml (3 tasses) de bouillon de légumes faible en sodium
	1 boîte (796 ml/28 oz) de tomates broyées
	5 ml (1 c. à thé) de basilic séché
	5 ml (1 c. à thé) d''origan séché
	375 ml (1 ½ tasse) de chou kale ou d''épinards hachés
	1 boîte (540 ml/19 oz) de lentilles, égouttées ou rincées
	2 ml (½ c. à thé) de sel
	1 ml (¼ c. à thé) de poivre noir','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Lentil%20bolognese.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (40,'Casserole de boulettes de pois chiches et de gnocchis',' 
Sauce tomate :
30 ml (2 c. à soupe) d''huile végétale
	1 oignon, haché
	3 gousses d''ail, émincées
	1 boîte (796 ml/28 oz) de tomates en dés
	4 ml (¾ c. à thé) d''origan séché
	½  paquet (150 g/5 oz) d''épinards surgelés, décongelés
Boulettes de pois chiches et de champignons :
1 paquet (225 g/8 oz) de champignons cremini, hachés finement (environ 375 ml/1 ½ tasses)
	30 ml (2 c. à soupe) d''huile végétale
	1 ml (¼ c. à thé) de sel
	1 boîte (540 ml/19 oz) de pois chiches, égouttés et rincés
	4 ml (¾ c. à thé) d''origan séché
	5 ml (1 c. à thé) de poudre d''ail
	15 ml (1 c. à soupe) de persil séché
	1 œuf
Pour assembler :
1 paquet (500 g/18 oz) de gnocchis du commerce
	250 ml (1 tasse) de fromage mozzarella râpé','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Chickpea%20and%20Mushroom%20_Meatballs_%20Bake%202.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (41,'Ragoût de poulet et de haricots de Lima',' 
30 ml (2 c. à table) d''huile végétale
	6 cuisses de poulet sans os et sans peau (environ 454 g/1 lb), coupées en dés de 5 cm/2 pouces 
	1 oignon, coupé en dés
	3 gousses d''ail, hachées
	5 ml (1 c. à thé) de cumin moulu
	5 ml (1 c. à thé) de cannelle moulue
	2 ml (½ c. à thé) de clou de girofle moulu
	5 ml (1 c. à thé) de sel
	2 ml (½ c. à thé) de poivre noir
	3 carottes, coupées en rondelles minces
	500 ml (2 tasses) de courge musquée en cubes surgelés
	750 ml (3 tasses) d''épinards frais, hachés
	60 ml (¼ tasse) d''abricots séchés, coupés en quatre
	125 ml (½ tasse) d''amandes non salées, grossièrement hachées (optionnel)
	500 ml (2 tasses) de bouillon de légumes faible en sodium
	1 boîte (540 ml/19 oz) de haricots de Lima faible en sodium, égouttés et rincés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Chicken%20and%20Lima%20Bean%20Tagine%202.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (42,'Hamburger au bœuf et aux haricots',' 
1 boîte (540 ml/19 oz) de haricots noirs faible en sodium, égouttés et rincés
	125 ml (½ tasse) d''oignon finement haché
	3 gousses d''ail, émincées
	30 ml (2 c. à soupe) de moutarde de Dijon
	5 ml (1 c. à thé) de cumin moulu
	7 ml (½ c. à soupe) de paprika
	2 ml (½ c. à thé) de sel
	1 ml (¼ c. à thé) de poivre noir
	1 œuf
	454 g (1 lb) de bœuf haché extra-maigre','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Beef%20and%20Bean%20Burgers.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (43,'Bol déjeuner à la tarte aux pommes',' 
125 ml (½ tasse) de quinoa non cuit
	250 ml (1 tasse) de boisson végétale enrichie non sucrée ou de lait plus faible en gras
	125 ml (½ tasse) d''eau
	1 ml (¼ c. à thé) de cannelle moulue
	½ ml (⅛ c. à thé) de muscade moulue
	20 ml (1 ½ c. à soupe) de miel
	1 pomme, coupée en petits dés
	5 ml (1 c. à thé) d''extrait de vanille
	60 ml (¼ tasse) de raisins secs','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-11/Apple%20Pie%20Quinoa%20Pudding%202.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (44,'Congee multigrain avec shiitake, gingembre et oignons verts',' 
6 champignons shiitakes séchés
	60 ml (¼ tasse) de grains de blé non cuits, rincés à l''eau froide
	85 ml (⅓ tasse) de riz blanc calrose, jasmin ou autre riz blanc à grain moyen non cuit, rincé à l''eau froide
	30 ml (2 c. à soupe) de riz noir ou autre riz à grain entier non cuit, rincé à l''eau froide
	60 ml (¼ tasse) de millet ou de sorgho non cuit
	1 ¾ l (7 tasses) d''eau froide, divisée
	6 morceaux d’oignons verts, racines enlevées et tranchés finement
	30 ml (2 c. à soupe) de gingembre frais, pelé et tranché finement
	5 ml (1 c. à thé) d''huile de sésame grillée
	15 ml (1 c. à soupe) de sauce soja plus faible en sodium
	Sel et poivre blanc au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Multigrain%20Congee%20-%20HERO_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (45,'Okroshka (soupe froide d’été)',' 
            1 botte de radis, tranchés finement (environ 250 ml/1 tasse)
	1 pomme de terre bouillie, coupée en cubes 
	3 œufs cuits durs, coupés en cubes 
	1 grand concombre, coupé en deux, épépiné et coupé en petits cubes 
	1 botte d’oignons verts, les parties vert foncé et vert pâle, tranchées finement (environ 250 ml/1 tasse)
	250 ml (1 tasse) d’aneth frais, haché finement 
	500 ml (2 tasses) de kéfir 1 %
	45 ml (3 c. à table) de jus de citron (environ 1 citron)
	Sel au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-07/OKROSHKA_hero%20shot.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (46,'Sauté de dinde',' 
30 ml (2 c. à soupe) d’huile végétale, divisée
	500 g (1 lb) de dinde hachée
	Une pincée de cumin moulu
	1 carotte, tranchée finement
	1 oignon, tranché finement
	Une pincée de poivre de cayenne
	¼ tête de chou, râpée
	2 gousses d’ail, hachées
	10 ml (2 c. à thé) de sauce soya plus faible en sodium 
	15 ml (1 c. à table) de ketchup
	125 ml (½ tasse) de haricots verts surgelés
	125 ml (½ tasse) de maïs surgelé
Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Turkey-061-1.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (47,'Courges aigres-douces au cari',' 
            15 ml (1 c. à table) d’huile végétale 
	1 oignon, émincé
	1 ml (¼ c. à thé) de cumin moulu
	15 ml (1 c. à table) de poudre de cari
	2 gousses d’ail, émincées
	1 l (4 tasses) bouillon de légumes plus faible en sodium, divisé
	1 courge musquée de taille moyenne, pelée et coupée en dés (environ 900 g/2 lb)
	1 boîte de conserve (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés
	1 boîte de conserve (540 ml/19 oz) de tomates en dés sans sel ajouté, avec le jus
	250 ml (1 tasse) de mangue surgelée, dégelée et hachée 
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Curried%20Squash-016-1.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (48,'Soupe au poulet et aux légumes printaniers',' 
            1 ¼ l (5 tasses) d’eau
	1 oignon, tranché
	2 ml (½ c. à thé) de poivre noir en grains
	2 feuilles de laurier séchées
	15 ml (1 c. à table) de jus de citron
	2 poitrines de poulet désossées et sans peau (environ 225 g/½ lb)
	¼ de chou, tranché finement
	1 tête de brocoli, coupée en petits fleurons
	1 carotte, tranchée finement
	125 ml (½ tasse) de champignons tranchés
	Sel au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Chicken%20and%20spring%20vegetable%20soup%20with%20tablecloth.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (49,'Trempette au chou-fleur et aux haricots blancs',' 
            1 tête de chou-fleur, coupée en petits fleurons
	30 ml (2 c. à table) d’huile d’olive, divisée
	1 boîte de conserve (540 ml/19 oz) de haricots blancs sans sel ajouté, égouttés et rincés
	2 ml (½ c. à thé) de poudre d’ail
	2 ml (½ c. à thé) de paprika
	2 ml (½ c. à thé) de jus de citron (environ ¼ de citron)
	125 ml (½ tasse) d’eau
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-07/Cauliflower%20bean%20dip.jpeg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (50,'Frappé crémeux',' 
            500 ml (2 tasses) d’épinards ou d’autres légumes-feuilles légèrement tassés 
	1 banane mûre 
	500 ml (2 tasses) de fruits frais ou surgelés (bleuets, fraises, pêches, prunes, mangues ou une combinaison de ces fruits)
	375 ml (1 ½  tasse) de lait écrémé ou de boisson végétale enrichie non sucrée
	250 ml (1 tasse) de yogourt grec nature 0 %
	20 ml (1 ½ c. à table) de flocons d’avoine ou de son d’avoine','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-07/Creamy%20smoothie_hero2.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (51,'Soupe cajun aux lentilles',' 
            1 l (4 tasses) bouillon de légumes plus faible en sodium
	1 l (4 tasses) d’eau
	500 ml (2 tasses) de lentilles vertes ou rouges sèches non cuites, rincées et égouttées
	20 ml (1 ½ c. à soupe) d’assaisonnement cajun
	250 ml (1 tasse) de navet jaune, coupé en dés
	2 carottes, coupées en dés
	2 branches de céleri, coupées en dés
	1 oignon, coupé en dés
	2 ml (½ c. à thé) de sauce Worcestershire
	5 ml (1 c. à thé) de persil frais, émincé','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-07/Cajun%20lentil%20soup.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (52,'Riz frit au poulet',' 
            30 ml (2 c. à soupe) d’huile végétale, divisée
	2 œufs, légèrement battus 
	 375 ml (1 ½ tasse) de poitrine de poulet cuite et hachée (en morceaux de ½ pouce) 
	4 gousses d’ail, émincées 
	20 ml (1 ½ c. à soupe) de gingembre frais haché 
	1 oignon, coupé en petits dés 
	3 morceaux de pak choi miniature, racine parée et les feuilles hachées finement
	1 l (4 tasses) de riz brun cuit, refroidi ou à la température de la pièce 
	40 ml (2 ½ c. à soupe) de sauce soya plus faible en sodium
	5 ml (1 c. à thé) d’huile de sésame 
	4 oignons verts, hachées finement','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-02/Chicken%20fried%20rice.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (53,'Soupe simple pour le déjeuner',' 
            30 ml (2 c. à soupe) d’huile d’olive 
	½ oignon jaune, haché finement
	2 gousses d’ail, hachées
	2 branches de céleri, coupées en petits dés
	2 carottes, pelées et coupées en petits dés  
	½ botte de brocoli, tiges incluses, parée et hachée finement (environ 750 ml/3 tasses)
	1 boîte (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés
	1 l (4 tasses) d’eau
	15 ml (1 c. à soupe) de miso blanc
	30 ml (2 c. à soupe) d’eau froide
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-02/Simple%20breakfast%20soup.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (54,'Croquettes de lentilles',' 
            1 boîte (540 ml/19 oz) de lentilles, égouttées et rincées
	60 ml (¼ tasse) de flocons d’avoine
	30 ml (2 c. à table) de jus de citron (environ 1 citron)
	10 ml (2 c. à thé) de basilic séché 
	10 ml (2 c. à thé) de cumin
	5 ml (1 c. à thé) de poudre d’ail 
	15 ml (1 c. à table) d’huile d’olive','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-12/lentil-nuggets-croquettes-lentilles.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (55,'Bouchées à l’avoine et à la citrouille sans cuisson',' 
            750 ml (3 tasses) de flocons d’avoine
	250 ml (1 tasse) de purée de citrouille pure (pas de garniture pour tarte à la citrouille)
	250 ml (1 tasse) de beurre d’amande ou d’arachide naturel ou une alternative sans noix
	125 ml (½ tasse) de sirop d’érable
	5 ml (1 c. à thé) de cannelle
	7 ml (½ c. à table) de vanille','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-09/Oat%20and%20pumpkin%20no-bake%20energy%20bites.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (56,'Sandwichs aux pommes',' 
            60 ml (¼ tasse) de beurre d’amande ou d’arachide naturel ou une alternative sans noix
	85 ml (⅓ tasse) de yogourt grec nature 0 %
	Un soupçon de cannelle
	2 pommes, épépinées et tranchées finement à l’horizontale
	Garnitures facultatives : amandes tranchées, fruits séchés, noix de coco non sucrée, graines','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/applewiches_hero.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (57,'Muffins au yogourt sans farine au mélangeur',' 
            250 ml (1 tasse) de yogourt grec nature 0 %
	2 bananes mûres (environ 250 ml/1 tasse)
	2 œufs
	30 ml (2 c. à table) d’huile végétale
	500 ml (2 tasses) de flocons d’avoine
	85 ml (⅓ tasse) de sirop d’érable
	7 ml (½ c. à table) de poudre à pâte
	2 ml (½ c. à thé) de bicarbonate de soude
	5 ml (1 c. à thé) de vanille
	250 ml (1 tasse) de petits fruits mélangés frais ou surgelés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-09/Flourless%20strawberry%20yogurt%20blender%20muffins.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (58,'Légumes verts au sésame',' 
            7 ml (½ c. à table) d’huile végétale
	½ tête de brocoli, hachée
	500 ml (2 tasses) de haricots verts, parés
	5 ml (1 c. à thé) de poudre d’ail
	250 ml (1 tasse) de pois verts surgelés
	30 ml (2 c. à table) d’huile de sésame
	15 ml (1 c. à table) de graines de sésame
	Sel et poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-09/Sizzlin%20sesame%20greens.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (59,'Barres granola à l''avoine sans cuisson',' 
            375 ml (1 ½ tasse) de gros flocons d''avoine
	125 ml (½ tasse) d''amandes hachées (facultatif)
	250 ml (1 tasse) de flocons de son
	250 ml (1 tasse) de dattes dénoyautées
	60 ml (¼ tasse) de miel
	60 ml (¼ tasse) de beurre d''amandes ou d''arachides naturel ou une alternative sans noix','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_oat_granola_4c-mod.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (60,'Scones savoureux aux poires et au fromage',' 
            375 ml (1 ½ tasse) de farine de blé entier
	125 ml (½ tasse) de son d''avoine
	10 ml (2 c. à thé) de poudre à pâte
	10 ml (2 c. à thé) de cassonade tassée
	1 ml (¼ c. à thé) de muscade moulue
	30 ml (2 c. à table) de margarine molle non hydrogénée
	155 ml (⅔ tasse) de yogourt grec nature 0 %
	1 poire mûre, épépinée et coupée en dés
	85 ml (⅓ tasse) de cheddar fort allégé râpé ou de fromage bleu émietté','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/pear_cheese_scones_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (61,'Parfaits aux fruits et yogourt avec granola',' 
            250 ml (1 tasse) d''avoine concassée
	250 ml (1 tasse) de gros flocons d''avoine
	165 ml (⅔ tasse) d''amandes effilées
	85 ml (⅓ tasse) de germe de blé
	60 ml (¼ tasse) de graines de lin moulues
	45 ml (3 c. à table) de sirop d''érable pur
	15 ml (1 c. à table) de vanille
	30 ml (2 c. à table) d''huile végétale
	1 l (4 tasses) de yogourt grec nature 0 %
	750 ml (3 tasses) de petits fruits frais ou surgelés (framboises, bleuets ou mûres)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_yogurt_grano_parfait_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (62,'Brochettes de fruits avec trempette au yogourt à l''érable',' 
            Brochettes :
8 fraises, coupées en deux
	2 pêches, coupées en 8 quartiers
	2 bananes sans la peau, coupées en 8 morceaux
Trempette au yogourt :
250 ml (1 tasse) de yogourt grec nature 0 %
	15 ml (1 c. à table) de sirop d''érable pur
	2 ml (½ c. à thé) de cannelle moulue','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_fruit_kebab_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (63,'Houmous crémeux',' 
            1 boîte (540 ml/19 oz) de pois chiches à teneur réduite en sodium, rincés et égouttés
	60 ml (¼ tasse) de tahini (pâte de graines de sésame)
	5 ml (1 c. à thé) de cumin moulu
	60 ml (¼ tasse) bouillon de légumes à teneur réduite en sodium
	2 ml (½ c. à thé) de zeste de citron râpé
	15 ml (1 c. à table) de jus de citron (environ ½ citron)
	30 ml (2 c. à table) d’eau (ou plus si désiré)
	1 gousse d’ail, émincée','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/hummus.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (64,'Croquant aux pommes et aux bleuets',' 
            4 pommes épépinées et hachées
	500 ml (2 tasses) de bleuets frais ou surgelés
	45 ml (3 c. à table) de cassonade bien tassée
	30 ml (2 c. à table) de farine tout usage
	5 ml (1 c. à thé) de vanille
Garniture :
250 ml (1 tasse) de gros flocons d’avoine
	125 ml (½ tasse) de farine tout usage
	85 ml (⅓ tasse) de son de blé
	30 ml (2 c. à table) de cassonade bien tassée
	2 ml (½ c. à thé) de cannelle moulue
	45 ml (3 c. à table) margarine molle non hydrogénée fondue','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/apple_berry_crisp_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (65,'Grignotines de pois chiches',' 
            1 boîte (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés
	15 ml (1 c. à table) d’huile végétale
	2 ml (½ c. à thé) de thym séché 
	2 ml (½ c. à thé) de poivre moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Roasted%20Chickpeas.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (66,'Cari aux pois chiches et aux légumes',' 
            45 ml (3 c. à table) de poudre de cari
	420 ml (1 ½ tasses + 3 c. à table) d’eau, divisée
	½ oignon jaune coupé en quartiers
	3 gousses d’ail
	1 branche de céleri
	60 ml (¼ tasse) de poivron vert coupé en dés
	1 tomate, coupée en deux
	5 ml (1 c. à thé) de garam masala
	2,5 ml (½ c. à thé) de sel
	1 boîte (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés
	500 ml (2 tasses) de chou-fleur, coupé en petites bouchées
	250 ml (1 tasse) de pois surgelés, dégelés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Curried%20cauliflower%20and%20peas.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (67,'Shakshouka (recette d’œufs pochés)',' 
            1 oignon jaune, coupé en dés
	1 poivron, coupé en dés
	4 gousses d’ail, émincées
	Une boîte de 796 ml (28 oz) de tomates en dés sans sel ajouté
	5 ml (1 c. à thé) de cumin
	10 ml (2 c. à thé) de paprika
	2,5 ml (½ c. à thé) de coriandre moulue
	1,25 ml (¼ c. à thé) de flocons de piment rouge
	4 œufs
	Garniture facultative : persil','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-02/Shakshuka.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (68,'Pâté chinois à la dinde et aux lentilles',' 
            5 grosses pommes de terre (environ 1 kg/2 ¼ lb), lavées et coupées en cubes
	1 oignon jaune, coupé en dés
	450 g (1 lb) de dinde hachée maigre
	250 ml (1 tasse) de lentilles en conserve, rincées et égouttées
	30 ml (2 c. à table) de sauce Worcestershire
	30 ml (2 c. à table) de pâte de tomates en conserve
	500 ml (2 tasses) de petits pois et de carottes surgelés, dégelés
	30 ml (2 c. à table) de margarine molle non hydrogénée
	15 ml (1 c. à table) de lait 1 %','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-02/ShepherdsPie.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (69,'Pho (soupe aux nouilles et au bœuf)',' 
            1 oignon, coupé en quatre
	3,5 cm (1 ½ po) de gingembre frais, pelé et coupé en deux
	1 bâton de cannelle
	1 anis étoilé 
	2 gousses d’ail entières
	Une pincée de flocons de piment fort
	1 l (4 tasses) de bouillon de bœuf plus faible en sodium
	250 ml (1 tasse) d’eau
	125 ml (½ tasse) de carottes râpées ou coupées en julienne
	1 poivron rouge, tranché finement
	15 ml (1 c. à table) de jus de lime (about ½ lime)
	5 ml (1 c. à thé) de sauce soya plus faible en sodium
	125 g (4 oz) de vermicelles de riz brun
	225 g/½ lb de bifteck de contre-filet, bien paré et tranché très finement
	250 ml (1 tasse) de germes de soja
	60 ml (¼ tasse) de coriandre, de menthe et de feuilles de basilic fraîches, hachées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Vietnamese%20Soup%20with%20Tablecloth%20cropped.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (70,'Sauté au tofu et aux légumes',' 
            1 paquet (350 g) de tofu extra ferme
	5 ml (1 c. à thé) de gingembre moulu
	2 ml (½ c. à thé) de poudre de cari
	Une pincée de poivre moulu
	10 ml (2 c. à thé) d’huile de sésame
	1 oignon, tranché
	2 gousses d’ail, hachées finement
	1 L (4 tasses) de légumes frais ou surgelés coupés
	190 ml (¾ tasse) de bouillon de légumes sans sel ajouté
	15 ml (1 c. à table) de sauce hoisin
	5 ml (1 c. à thé) de fécule de maïs
	5 ml (1 c. à thé) de graines de sésame grillées (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Tofu%20and%20veggie%20stir%20fry.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (71,'Soupe des trois sœurs (maïs, haricots et courge)',' 
            10 ml (2 c. à thé) d’huile végétale
	1 oignon, coupé en dés
	4 carottes, hachées
	4 gousses d’ail, émincées
	4 branches de céleri, hachées
	2 l (8 tasses) de bouillon de légumes
	1 courge musquée, pelée et coupée en cubes
	375 ml (1 ½ tasse) de maïs en grains surgelés
	2 boîtes (2 x 540 ml/19 oz) de haricots rouges sans sel ajouté, égouttés et rincés
	10 ml (2 c. à thé) de thym séché ou 60 ml (4 c. à table) de thym frais
	5 ml (1 c. à thé) de poivre','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/3SistersSoup%20w%20background_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (72,'Poulet à l’ananas et au gingembre',' 
            190 ml (¾ tasse) d’ananas broyés en conserve sans sucre ajouté
	15 ml (1 c. à table) de gingembre frais râpé ou émincé 
	1 gousse d’ail, râpée ou émincée
	15 ml (1 c. à table) de sauce soya plus faible en sodium
	10 ml (2 c. à thé) d’huile végétale
	3 poitrines de poulet désossées et sans peau (environ 500 g/1 lb)
	1 poivron, haché
	30 ml (2 c. à table) de menthe fraîche hachée
	2 ml (½ c. à thé) de sauce au piment fort','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Pineapple%20Chicken.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (73,'Harira (Ragoût marocain)',' 
            10 ml (2 c. à thé) d’huile végétale
	1 oignon, coupé en dés
	10 ml (2 c. à thé) de cannelle moulue
	10 ml (2 c. à thé) de cumin moulu
	10 ml (2 c. à thé) de coriandre moulue
	Une pincée de flocons de chili (facultatif)
	2 gousses d’ail, émincées
	1 grosse patate douce, pelée et hachée en morceaux de 1,5 cm (½ pouce)
	375 ml (1 ½ tasse) de petit pois surgelés
	1 boîte (796 ml/28 oz) de tomates écrasées, sans sel ajouté
	750 ml (3 tasses) de bouillon de légumes sans sel ajouté
	1 boîte (540 ml/19 oz) de pois chiches sans sel ajouté, égouttés et rincés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Moose%20Stew%20w%20background_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (74,'Cari de lentilles et d’aubergines',' 
            10 ml (2 c. à thé) d’huile végétale
	1 oignon, haché
	3 gousses d’ail, émincées
	15 ml (1 c. à table) de gingembre frais, émincé
	1 petite aubergine, hachée (environ 90 g/3 oz)
	15 ml (1 c. à table) de poudre de cari
	2 ml (½ c. à thé) de graines de cumin
	375 ml (1 ½ tasse) de bouillon de légumes faible en sodium
	1 boîte (540 ml/19 oz) de lentilles sans sel ajouté, rincées et égouttées
	1 tomate, coupée en dés
	125 ml (½ tasse) de feuilles de coriandre fraîche, hachées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-10/Eggplant%20Lentil%20Stew.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (75,'Couscous aux pois chiches et aux légumes',' 
            375 ml (1 ½ tasse) de couscous à grains entiers non cuit
	1 rutabaga, coupé en cubes de 2,5 cm (1 po)
	4 carottes, coupées en cubes
	4 panais, coupés en cubes
	2 branches de céleri, tranchées
	1 boîte (540 ml/19 oz) de pois chiches, égouttés et rincés
	1 boîte (796 ml/28 oz) de tomates en dés sans sel ajouté
	15 ml (1 c. à table) d’épices à couscous (voir la rubrique Trucs)
	2 feuilles de laurier
	3 courgettes, tranchées en rondelles épaisses','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Couscous_Mtl.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (76,'Chili à la dinde',' 
            500 g (1 lb) de dinde maigre hachée
	10 ml (2 c. à thé) d''huile végétale
	1 oignon, haché finement
	1 poivron, haché
	4 gousses d''ail, émincées
	15 ml (1 c. à table) de poudre de chili
	10 ml (2 c. à thé) d''origan séché
	5 ml (1 c. à thé) de cumin moulu
	1 piment jalapeño, épépiné et émincé
	1 boîte (796 ml/28 oz) de tomates en dés
	1 boîte (540 ml/19 oz) de haricots rouges, égouttés et rincés
	125 ml (½ tasse) de bouillon de légumes faible en sodium ou d''eau
	60 ml (¼ tasse) de pâte de tomates
	2 feuilles de laurier','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_turkey_chili_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (77,'Lasagne mijotée',' 
            225 g (½ lb) de bœuf haché extra maigre
	1 oignon, haché finement
	3 gousses d''ail, émincées
	10 ml (2 c. à thé) d’origan séché
	1 ml (¼ c. à thé) de flocons de piment fort
	1 pot (700 ml) de passata (coulis de tomates broyées et filtrées)
	250 ml (1 tasse) d''eau
	10 pâtes à lasagne de grains entiers
	1 contenant (475 g) de ricotta plus faible en gras
	1 paquet (142 g/5 oz) de jeunes épinards, lavés et hachés
	60 ml (¼ tasse) de persil ou de basilic frais haché
	30 ml (2 c. à table) de parmesan râpé
	125 ml (½ tasse) de mozzarella écrémée râpée','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_slow_cook_lasagna_v2.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (78,'Pâtes aux tomates et à la ricotta',' 
            1 paquet (375 g) de rotini ou fusilli de grains entiers
	10 ml (2 c. à thé) d''huile d''olive extra vierge
	1 courgette, râpée
	1 carotte, râpée
	½ poivron, tranché finement
	15 ml (1 c. à table) d''origan séché
	5 ml (1 c. à thé) de basilic séché
	1 pot (700 ml) de passata (coulis de tomates broyées et filtrées)
	125 ml (½ tasse) d''eau
	45 ml (3 c. à table) de persil ou de basilic frais haché
	250 ml (1 tasse) de ricotta plus faible en gras
	30 ml (2 c. à table) de parmesan râpé (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/ST_tomato_ricotta_pasta_4c_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (79,'Ragoût de légumes et lentilles au cari',' 
            10 ml (2 c. à thé) d’huile végétale 
	1 oignon rouge, haché
	4 gousses d''ail, émincées
	60 ml (¼ tasse) de coriandre fraîche hachée, divisée
	15 ml (1 c. à table) de gingembre frais émincé ou 5 ml (1 c. à thé) de gingembre moulu
	30 ml (2 c. à table) de pâte ou de poudre de cari doux
	5 ml (1 c. à thé) de garam masala
	30 ml (2 c. à table) de farine tout usage
	625 ml (2 ½ tasses) de bouillon de légumes faible en sodium
	2 pommes de terre jaunes, pelées et coupées en dés 
	1 poivron, haché
	310 ml (2 ¼ tasses) de haricots verts frais ou surgelés, hachés
	1 boîte (540 ml/19 oz) de lentilles, rincées et égouttées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_lentil_curry_stew_4c_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (80,'Chaudrée de palourdes crémeuse',' 
            10 ml (2 c. à thé) d''huile végétale
	1 paquet (227 g) de champignons, hachés
	1 petit oignon, coupé en dés
	3 gousses d''ail, émincées
	2 branches de céleri, coupées en dés
	30 ml (2 c. à table) de persil frais haché ou 15 ml (1 c. à table) de persil séché
	15 ml (1 c. à table) d''estragon frais haché ou 5 ml (1 c. à thé) d''estragon séché
	45 ml (3 c. à table) de farine tout usage
	500 ml (2 tasses) de lait écrémé
	250 ml (1 tasse) de bouillon de légumes ou de bouillon de poisson plus faible en sodium
	1 boîte (142 g) de petites palourdes égouttées et rincées
	250 ml (1 tasse) de maïs en grains','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_clam_chowder_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (81,'Spaghetti avec boulettes de dinde',' 
            1 paquet (450 g/1 lb) de dinde hachée maigre
	45 ml (3 c. à table) de chapelure de grains entiers assaisonnée
	90 ml (6 c. à table) de parmesan frais râpé, divisé
	30 ml (2 c. à table) de persil frais haché
	1 ml (¼ c. à thé) de poivre moulu
	1 boîte (796 ml/28 oz) de tomates sans sel ajouté, en purée
	1 carotte, râpée
	1 oignon, émincé
	2 gousses d''ail, émincées
	2 tiges de basilic frais
	1 ml (¼ c. à thé) de flocons de piment fort
	1 paquet (375 g) de spaghetti de grains entiers','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/spag_turkey_meatballs.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (82,'Soupe aux lentilles rouges et aux champignons',' 
            10 ml (2 c. à thé) d''huile d''olive extra vierge
	1 paquet (227 g) de champignons, hachés
	1 oignon, haché
	1 carotte, hachée
	60 ml (¼ tasse) de persil frais haché
	15 ml (1 c. à table) d''origan séché
	10 ml (2 c. à thé) de thym séché
	1 ml (¼ c. à thé) de flocons de piment fort
	250 ml (1 tasse) de lentilles rouges non cuites, rincées
	750 ml (3 tasses) de bouillon de légumes plus faible en sodium
	500 ml (2 tasses) d''eau
	2 ml (½ c. à thé) de zeste de citron râpé (environ ⅓ citron)
	30 ml (2 c. à table) de jus de citron frais (environ 1 citron)
	85 ml (⅓ tasse) de feta plus faible en gras émiettée (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/EAT13105_HR_RGB_lentil_soup-SM.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (83,'Salade d''orge rôtie et de riz sauvage',' 
            125 ml (½ tasse) d''orge mondé 
	125 ml (½ tasse) de riz sauvage
	250 ml (1 tasse) de bouillon de légumes ou de poulet plus faible en sodium
	250 ml (1 tasse) d''eau
	1 poivron jaune ou orange, haché
	1 courgette, hachée
	1 tomate, coupée en dés
	30 ml (2 c. à table) de vinaigre de cidre ou blanc
	15 ml (1 c. à table) de moutarde de Dijon
	10 ml (2 c. à thé) d''huile végétale
	1 petite gousse d''ail, hachée finement
	Une pincée de poivre moulu
	375 ml (1 ½ tasse) de dinde ou de poulet cuit en morceaux 
	60 ml (¼ tasse)de persil frais haché 
	60 ml (¼ tasse) de ciboulette fraîche hachée','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/_barley_rice_salad.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (84,'Roulés de laitue à l''avocat et aux haricots',' 
            1 boîte (540 ml/19 oz) de haricots blancs, égouttés et rincés
	60 ml (¼ tasse) de tomates séchées réhydratées et hachées (voir truc)
	60 ml (¼ tasse) de persil frais haché
	1 gousse d''ail, émincée
	1 ml (¼ c. à thé) de poivre moulu
	1 avocat, coupé en dés
	1 petit poivron, coupé en dés
	15 ml (1 c. à table) de vinaigre de cidre
	1 petite laitue Boston
	1 carotte, râpée','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/avocado_bean_wrap.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (85,'Salade de thon et de tomates',' 
            1 l (2 tasses) de tomates cerises, coupées en deux dans le sens de la longueur
	2 branches de céleri, tranchées finement
	2 boîtes (poids égoutté de 120 g chacune) de thon pâle émietté dans l''eau, égoutté
	250 ml (1 tasse) de concombre haché
Vinaigrette :
45 ml (3 c. à table) de vinaigre de vin rouge
	10 ml (2 c. à thé) d''huile d''olive extra vierge
	1 gousse d''ail, émincée
	Une pincée de flocons de piment fort
	75 ml (⅓ tasse) de basilic frais haché
	30 ml (2 c. à table) d''origan frais haché','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_tuna_tomato_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (86,'Pochettes de tofu à l''orange',' 
            1 bloc (350g) de tofu extra ferme
	2 ml (½ c. à table) de zeste d''orange
	45 ml (3 c. à table) de jus d''orange
	30 ml (2 c. à table) de sauce soya à teneur réduite en sodium
	10 ml (2 c. à thé) d''huile de sésame
	10 ml (2 c. à thé) de gingembre frais râpé
	1 gousse d''ail, râpée
	1 ml (¼ c. à thé) de sauce chili Sriracha (sauce piquante)
	3 pitas de grains entiers coupés en deux
	500 ml (2 tasses) de jeunes épinards
	150 ml (⅔ tasse) de carottes râpées
	6 petits quartiers de lime','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_tofu_pitas_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (87,'Bifteck de flanc grillé avec légumes barbecue',' 
            1 bifteck de flanc (environ 565 g/1 ¼ lb)
	60 ml (¼ tasse) de vinaigre balsamique
	15 ml (1 c. à table) de sauce soya à teneur réduite en sodium
	15 ml (1 c. à table) de sauce Worcestershire
	2 gousses d''ail, râpées
	10 ml (2 c. à thé) de romarin frais haché
	10 ml (2 c. à thé) d''huile d''olive extra vierge
	5 ml (1 c. à thé) de moutarde de Dijon
	1 paquet (170 g/6 oz) de champignons portobello, tranchés
	1 petit oignon rouge, coupé en quartiers
	1 courgette, tranchée
	1 poivron rouge, coupé en quatre
	750 ml (3 tasses) de jeunes épinards','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Flank_steak_salad_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (88,'Papillotes de légumes et de poisson aux herbes',' 
            1 botte d''asperges fraîches, parées
	2 poivrons rouges, tranchés en lanières
	2 petites courgettes jaunes (courges d''été), tranchées
	60 ml (¼ tasse) de basilic frais haché
	30 ml (2 c. à soupe) de persil ou de ciboulette frais, haché
	2 gousses d''ail, émincées
	4 pak choy miniatures coupés en deux dans le sens de la longueur
	15 ml (1 c. à table) de moutarde de Dijon
	10 ml (2 c. à thé) d''huile végétale
	15 ml (1 c. à table) de feuilles de thym frais hachées
	1 ml (¼ c. à thé) poivre moulu
	4 filets de saumon sans peau (environ 125 g/4 oz chacun)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_grilled_fish_packets_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (89,'Sandwichs ouverts aux œufs',' 
            2 œufs cuits durs, écalés
	15 ml (1 c. à table) de yogourt grec 0 % 
	15 ml (1 c. à table) de mayonnaise plus faible en gras
	Une pincée de poivre moulu
	1 branche de céleri, hachée finement
	60 ml (¼ tasse) de poivron rouge, haché finement
	1 oignon vert, haché finement (facultatif)
	5 ml (1 c. à thé) d''aneth ou de persil frais, haché, ou 1 ml (¼ c. à thé) d''aneth séché
	2 feuilles de laitue
	2 tranches de pain de grains entiers ou de pain pumpernickel','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/ST_open_face_egg_sandw_4c_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (90,'Salade de haricots',' 
            375 ml (1 ½ tasse) de haricots verts, parés
	375 ml (1 ½ tasse) de haricots jaunes, parés
	250 ml (1 tasse) de fèves de soya (edamame) décortiquées
	1 boîte (540 ml/19 oz) de pois chiches à teneur réduite en sodium, égouttés et rincés
	2 branches de céleri, hachées finement
	2 oignons verts, hachés
	1 poivron rouge, haché
	60 ml (¼ tasse) de vinaigre de cidre
	15 ml (1 c. à table) de moutarde de Dijon
	15 ml (1 c. à table) d''huile végétale
	2 ml (½ c. à thé) de poivre moulu
	60 ml (¼ tasse) de basilic et de persil frais, haché, ou de menthe fraîche, hachée','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/bean_salad_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (91,'Pilons de poulet au barbecue',' 
            5 ml (1 c. à thé) d''huile végétale
	1 oignon, haché
	2 gousses d''ail, émincées
	15 ml (1 c. à table) de thym frais haché
	10 ml (2 c. à thé) de poudre de chili
	1 ml (¼ c. à thé) poivre moulu
	500 ml (2 tasses) de passata (coulis de tomates broyées et filtrées)
	175 ml (¾ tasse) de dattes Medjool dénoyautées et hachées
	60 ml (¼ tasse) de vinaigre de cidre
	15 ml (1 c. à table) de sauce Worcestershire
	5 ml (1 c. à thé) de sauce piquante
	10 de pilons de poulet sans peau (environ 900 g/2 lb)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_grilled_drumsticks_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (92,'Lanières de dinde croustillantes avec frites au four',' 
            1 poitrine de dinde désossée, sans peau (environ 565 g/1 ¼ lb)
	15 ml (1 c. à table) de moutarde de Dijon ou de moutarde jaune
	5 ml (1 c. à thé) d’huile végétale
	500 ml (2 tasses) de flocons de son
	30 ml (2 c. à table) de parmesan râpé
	5 ml (1 c. à thé) d''assaisonnement aux herbes italiennes ou de feuilles d’origan séchées
Frites au four :
1 patate douce, pelée et coupée en lanières
	2 panais, pelés et coupés en lanières
	5 ml (1 c. à thé) d’huile végétale
	2 ml (½ c. à thé) poudre de chili','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/turkey_fingers.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (93,'Pitas à la dinde et aux légumes',' 
            85 ml (⅓ tasse) de yogourt grec nature 0 %
	30 ml (2 c. à table) de mayonnaise plus faible en gras
	5 ml (1 c. à thé) de moutarde de Dijon ou de moutarde jaune
	1 ml (¼ c. à thé) de poivre moulu
	375 ml (1 ½ tasse) de poitrine de dinde cuite hachée 
	125 ml (½ tasse) de poivron en dés
	60 ml (¼ tasse) de carottes râpées
	2 pains pitas à grains entiers
	4 feuilles de laitue Boston
	¼ de grand concombre, tranché finement','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Turkey_veggie_pita.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (94,'Gratin de quinoa et de légumes',' 
            10 ml (2 c. à thé) d''huile d''olive extra vierge
	1 poireau, la partie blanche et vert pâle seulement, tranché finement
	3 gousses d''ail, émincées
	1 poivron rouge, orange ou jaune, coupé en dés
	10 ml (2 c. à thé) d''assaisonnement aux herbes italiennes
	250 ml (1 tasse) de quinoa rincé
	500 ml (2 tasses) de fleurons de brocoli
	440 ml (1 ¾ tasse) de bouillon de légumes à teneur réduite en sodium
	250 ml (1 tasse) de maïs en grains surgelés 
	15 ml (1 c. à table) de persil frais haché
	190 ml (¾ tasse) de cheddar fort plus faible en gras râpé','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/quinoa_casserole.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (95,'Poêlée de porc minute aux pommes',' 
            5 ml (1 c. à thé) d’huile végétale
	2 gousses d’ail émincées
	5 ml (1 c. à thé) de thym séché
	1 ml (¼ c. à thé) de poivre moulu
	4 côtelettes de porc désossées (environ 450 g/1 lb)
	2 pommes rouges pelées, épépinées et tranchées
	125 ml (½ tasse) de bouillon de poulet ou de légumes à teneur réduite en sodium
	5 ml (1 c. à thé) de moutarde de Dijon
	2 ml (½ c. à thé) de fécule de maïs','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/pork_apple_diner.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (96,'Macaroni au fromage avec des légumes',' 
            375 ml (1 ½ tasse) de macaroni ou de fusilli au grains entiers, non cuits
	10 ml (2 c. à thé) de margarine molle non hydrogénée
	1 oignon haché finement
	2 gousses d’ail émincées
	1 carotte hachée finement
	125 ml (½ tasse) de poivron rouge haché finement
	125 ml (½ tasse) de courgette râpée
	30 ml (2 c. à table) de farine tout usage
	500 ml (2 tasses) de lait écrémé
	5 ml (1 c. à thé) de thym frais haché ou 2 ml (½ c. à thé) de thym séché
	250 ml (1 tasse) de cheddar fort plus faible en gras râpé
	5 ml (1 c. à thé) de moutarde de Dijon
	Une pincée de poivre moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/mac_cheese.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (97,'Soupe poulet et nouilles',' 
            6 cuisses de poulet désossées, sans la peau (environ 565 g/1 ¼ lb)
	2 l (8 tasses) d’eau
	2 brins de persil frais
	1 oignon, haché
	1 carotte, hachée
	1 gousse d’ail, émincée
	250 ml (1 tasse) de nouilles de grains entiers aux œufs
	250 ml (1 tasse) de petits pois surgelés
	60 ml (¼ tasse) de parmesan râpé
	30 ml (2 c. à table) de basilic ou de persil frais, haché
	Sauce piquante (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/chicken_noodle_soup.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (98,'Soupe épicée à la courge musquée',' 
            1 courge musquée moyenne (environ 1,125 kg/2 ¼ lb)
	5 ml (1 c. à thé) d’huile végétale
	1 oignon haché
	2 gousses d’ail, émincées
	10 ml (2 c. à thé) de poudre ou de pâte de cari doux
	750 ml (3 tasses) de bouillon de poulet ou de légumes
	30 ml (2 c. à table) de coriandre ou de persil frais haché (facultatif)
	1 ml (¼ c. à thé) de poivre moulu
	85 ml (⅓ tasse) de yogourt grec nature 0% (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/butternut_squash_soup_0.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (99,'Salade au quinoa',' 
            250 ml (1 tasse) de quinoa bien rincé
	440 ml (1 ¾ tasse) de bouillon de légumes à teneur réduite en sodium
	1 gousse d''ail, émincée
	5 ml (1 c. à thé) de thym frais haché ou 2 ml (½ c. à thé) de thym séché
	2 poivrons rouges, jaunes ou verts épépinés et coupés en quatre
	1 carotte pelée et tranchée dans le sens de la longueur
	1 courgette tranchée dans le sens de la longueur
	10 ml (2 c. à thé) d''huile végétale
	2 ml (½ c. à thé) de zeste de citron râpé
	1 ml (¼ c. à thé) de poivre moulu
	60 ml (¼ tasse) de basilic frais haché
	30 ml (2 c. à table) de vinaigre de cidre ou de vinaigre de vin blanc
	15 ml (1 c. à table) de jus de citron (environ ½ citron)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/quinoa_grill_veggie.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (100,'Soupe de carottes, lentilles et gingembre',' 
            10 ml (2 c. à thé) d’huile végétale
	1 oignon haché
	2 gousses d’ail, hachées finement
	30 ml (2 c. à table) de gingembre frais, râpé finement
	5 ml (1 c. à thé) de cumin moulu
	1 ml (¼ c. à thé) de poivre noir
	5 carottes, pelées et hachées
	250 ml (1 tasse) de lentilles rouges sèches, rincées
	1,25 l (5 tasses) de bouillon de légumes sans sel ajouté','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Carrot%20Lentil%20Soup.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (101,'Mujadarrah (lentilles, oignons et riz)',' 
            30 ml (2 c. à table) d’huile d’olive
	3 oignons tranchés finement
	5 ml (1 c. à thé) de cumin moulu
	560 ml (2 ¼ tasses) de riz brun ou sauvage, cuit
	1 boîte (540 ml/19 oz) de lentilles brunes ou vertes, égouttées et rincées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Mujadarrah.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (102,'Soupe minestrone',' 
            1,5 l (6 tasses) de bouillon de légumes sans sel ajouté
	1 l (4 tasses) de chou haché
	750 ml (3 tasses) de carottes, coupées en dés
	1 boîte (540 ml/19 oz) de haricots blancs sans sel ajouté, égouttés et rincés
	1 boîte (796 ml/28 oz) de tomates en dés sans sel ajouté ou de tomates en dés en purée
	2 ml (½ c. à thé) de poudre d’ail','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Minestrone%20soup.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (103,'Salade de chou',' 
            1 chou vert ou rouge, râpé
	500 ml (2 tasses) de carottes, râpées
	1 oignon, haché finement
	60 ml (¼ tasse) d’huile végétale
	60 ml (¼ tasse) de vinaigre
	Poivre au goût','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Coleslaw.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (104,'Rôtie au brocoli gratinée',' 
            500 ml (2 tasses) de brocoli surgelé
	1 ml (¼ c. à thé) de flocons de piment rouge
	2 ml (½ c. à thé) de poudre d’ail
	60 ml (¼ tasse) de cheddar plus faible en gras, râpé
	2 tranches de pain à grains entiers','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Broccoli%20toast-e.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (105,'Salade de fruits',' 
            2 pommes, épépinées et hachées
	2 oranges, pelées et hachées
	½ petit cantaloup, épépiné et haché
	2 poires, épépinées et hachées
	30ml (2 c. à table) de jus de lime (environ 1 lime)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Fruit%20salad.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (106,'Crêpes aux carottes et aux pommes de terre',' 
            4 œufs
	500 ml (2 tasses) de carottes râpées finement
	500 ml (2 tasses) de pommes de terre râpées finement
	15 ml (1 c. à soupe) d’oignon râpé finement
	30 ml (2 c. à soupe) de farine de blé entier
	2 ml (½ c. à thé) de poudre à pâte','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/Potato%20Pancakes.JPG');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (107,'Frittata épicée aux légumes',' 
            1 paquet (142 g/5 oz) de bébés épinards, lavés (ne pas les sécher complètement)
	1 poivron rouge, coupé en dés
	3 gousses d''ail, émincées
	1 ml (¼ c. à thé) de flocons de piment fort
	10 ml (2 c. à thé) d''huile d''olive extra vierge
	5 œufs
	85 ml (⅓ tasse) d''eau ou de lait écrémé
	30 ml (2 c. à table) de parmesan râpé','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/ST_frittata_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (108,'Petits fours au fromage',' 
            2 tranches de pain à grains entiers
	375 ml (1 ½ tasse) de brocoli cuit haché
	125 ml (½ tasse) de cheddar fort ou de fromage suisse plus faible en gras râpé
	60 ml (¼ tasse) de dinde cuite hachée
	30 ml (2 c. à table) de persil frais haché
	190 ml (¾ tasse) de lait écrémé
	3 œufs
	5 ml (1 c. à thé) de moutarde de Dijon
	Une pincée de poivre noir moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Cheese_stratas_1.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (109,'Œufs pochés classiques',' 
            2 œufs
	15 ml (1 c. à table) de vinaigre blanc
	1 muffin anglais de grains entiers coupé en deux et grillé
	Une pincée de poivre moulu','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/poached_eggs.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (110,'Bâtonnets de pain doré avec garniture à l''ananas et à l''orange',' 
            125 ml (½ tasse) de lait écrémé
	2 oeufs
	2 ml (½ c. à thé) de zeste d''orange
	5 ml (1 c. à thé) de vanille
	2 ml (½ c. à thé) de cannelle moulue
	250 ml (1 tasse) de flocons de son, écrasés
	4 tranches de pain de grains entiers
Garniture à l''ananas et à l''orange:
5 ml (1 c. à thé) de margarine molle non hydrogénée
	5 ml (1 c. à thé) de sucre granulé
	1 orange navel, épluchée et hachée
	250 ml (1 tasse) d''ananas coupé en dés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/french_toast.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (111,'Crêpes aux fraises',' 
            250 ml (1 tasse) de farine de blé entier
	125 ml (½ tasse) de farine tout usage
	30 ml (2 c. à table) de sucre granulé
	10 ml (2 c. à thé) de poudre à pâte
	Une pincée de cannelle moulue
	375 ml (1 ½ tasse) de lait écrémé
	1 oeuf
	30 ml (2 c. à table) d''huile végétale
	10 ml (2 c. à thé) de vanille
	250 ml (1 tasse) de fraises fraîches en dés','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/ST_strawbs_pancakes_4c.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (112,'Muffins savoureux au brocoli et fromage',' 
            125 ml (½ tasse) de farine tout usage
	125 ml (½ tasse) de farine de blé entier
	125 ml (½  tasse) de semoule de maïs fine
	85 ml (⅓  tasse) de graines de lin moulus ou de germe de blé
	5 ml (1 c. à thé) de poudre à pâte
	5 ml (1 c. à thé) de bicarbonate de soude
	2 ml (½  c. à thé) de poudre d’ail 
	2 ml (½ c. à thé) de paprika
	1 ml (¼ c. à thé) de piment de Cayenne
	250 ml (1 tasse) yogourt grec nature 0 %
	85 ml (⅓ tasse) de lait écrémé
	1 œuf
	30 ml (2 c. à table) d’huile végétale
	375 ml (1 ½ tasse) de bouquets de brocoli hachés
	190 ml (¾ tasse) de cheddar fort plus faible en gras râpé','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2020-07/broco_cheese_muffins.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (113,'Gruau tarte aux pommes',' 
            250 ml (1 tasse) d’eau
	625 ml (2 ½ tasse) lait écrémé
	335 ml (1 ⅓ tasse) gros flocons d’avoine
	85 ml (⅓ tasse) de germe de blé
	30 ml (2 c. à table) de cassonade bien tassée
	2 ml (½ c. à thé) d’épices pour tarte à la citrouille ou de cannelle moulue
	1 pomme épépinée et coupée en dés
	30 ml (2 c. à table) de canneberges séchées (facultatif)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/apple%20pie%20oatmeal.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (114,'Œufs brouillés aux légumes',' 
            6 œufs
	60 ml (¼ tasse) de lait écrémé
	1 ml (¼ c. à thé) de poivre noir moulu
	5 ml (1 c. à thé) d’huile végétale
	375 ml (1 ½ tasse) de légumes frais ou surgelés mélangés (tels que des oignons, poivrons, champignons)','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2022-05/Egg%20and%20veggie%20scramble.jpg');
INSERT INTO recettes(id,nomRecette,ingredientsRecette,imgUrl) VALUES (115,'Gruau classique préparé la veille',' 
            85 ml (1⁄3 tasse) de yogourt plus faible en gras
	85 ml (1⁄3 tasse) de gros flocons d’avoine
	85 ml (1⁄3 tasse) de lait plus faible en gras, de boisson de soya enrichie non sucrée ou d’eau
	2 ml (1⁄2 c. à thé) de cannelle
	125 ml (1⁄2 tasse) de fraises surgelées','https://guide-alimentaire.canada.ca/sites/default/files/styles/container_width/public/2021-02/Classic%20overnight%20oats_0.jpg');
