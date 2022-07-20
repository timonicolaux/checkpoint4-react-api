DROP TABLE IF EXISTS `recettes`;

CREATE TABLE `recettes` (
 `id` int NOT NULL AUTO_INCREMENT,
 `titre` VARCHAR(100) NOT NULL,
 `categorie`VARCHAR(10) NOT NULL,
 `ingredient1` VARCHAR(100),
 `ingredient2` VARCHAR(100),
 `ingredient3` VARCHAR(100),
 `ingredient4` VARCHAR(100),
 `ingredient5` VARCHAR(100),
 `ingredient6` VARCHAR(100),
 `ingredient7` VARCHAR(100),
 `ingredient8` VARCHAR(100),
 `ingredient9` VARCHAR(100),
 `ingredient10` VARCHAR(100),
 `ingredient11` VARCHAR(100),
 `ingredient12` VARCHAR(100),
 `ingredient13` VARCHAR(100),
 `ingredient14` VARCHAR(100),
 `ingredient15` VARCHAR(100),
 `etape1` VARCHAR(400),
 `etape2` VARCHAR(400),
 `etape3` VARCHAR(400),
 `etape4` VARCHAR(400),
 `etape5` VARCHAR(400),
 `etape6` VARCHAR(400),
 `etape7` VARCHAR(400),
 `etape8` VARCHAR(400),
 `etape9` VARCHAR(400),
 `etape10` VARCHAR(400),
 `etape11` VARCHAR(400),
 `etape12` VARCHAR(400),
 `etape13` VARCHAR(400),
 `etape14` VARCHAR(400),
 `etape15` VARCHAR(400),
 `imagerecette` VARCHAR(300),
 PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO `recettes` (titre, categorie, ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8, ingredient9, ingredient10, ingredient11, ingredient12, ingredient13, ingredient14, ingredient15, etape1, etape2, etape3, etape4, etape5, etape6, etape7, etape8, etape9, etape10, etape11, etape12, etape13, etape14, etape15, imagerecette)
VALUES ('Lasagnes à la bolognaise', 'Plat', '1 paquet de pâtes à lasagne', '3 oignons jaunes', '2 gousses d''ail', '1 branche de céleri', '1 carotte', '800g de pure de tomate', '15cl d''eau', '20cl de vin rouge', '125g de parmesan', '100g de farine', '125g de beurre', '1l de lait', '600g de boeuf haché', 'Faire revenir gousses hachées d''ail et les oignons émincés dans un peu d''huile d''olive.', 'Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout.', 'Au bout de quelques minutes, ajouter le vin rouge. Laisser cuire jusqu''à évaporation.', 'Ajouter la purée de tomates, l''eau et les herbes. Saler, poivrer, puis laisser mijoter à feu doux 45 minutes.', 'Préparer la béchamel : faire fondre 100 g de beurre.','Hors du feu, ajouter la farine d''un coup.','Remettre sur le feu et remuer avec un fouet jusqu''à l''obtention d''un mélange bien lisse.', 'Ajouter le lait peu à peu. Remuer sans cesse, jusqu''à ce que le mélange s''épaississe.', 'Ensuite, parfumer avec la muscade, saler, poivrer. Laisser cuire environ 5 minutes, à feu très doux, en remuant. Réserver.', 'Préchauffer le four à 200°C (thermostat 6-7). Huiler le plat à lasagnes. Poser une fine couche de béchamel puis des feuilles de lasagnes, de la bolognaise, de la béchamel et du parmesan. Répéter l''opération 3 fois de suite.', 'Sur la dernière couche de lasagnes, ne mettre que de la béchamel et recouvrir de fromage râpé. Parsemer quelques noisettes de beurre.', 'Enfourner pour environ 25 minutes de cuisson', 'Déguster', null, null, null, null, 'https://images.radio-canada.ca/q_auto,w_800/v1/alimentation/recette/1x1/lasagne.jpg' ),
('Lasagnes à la bolognaise', 'Plat', '1 paquet de pâtes à lasagne', '3 oignons jaunes', '2 gousses d''ail', '1 branche de céleri', '1 carotte', '800g de pure de tomate', '15cl d''eau', '20cl de vin rouge', '125g de parmesan', '100g de farine', '125g de beurre', '1l de lait', '600g de boeuf haché', 'Faire revenir gousses hachées d''ail et les oignons émincés dans un peu d''huile d''olive.', 'Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout.', 'Au bout de quelques minutes, ajouter le vin rouge. Laisser cuire jusqu''à évaporation.', 'Ajouter la purée de tomates, l''eau et les herbes. Saler, poivrer, puis laisser mijoter à feu doux 45 minutes.', 'Préparer la béchamel : faire fondre 100 g de beurre.','Hors du feu, ajouter la farine d''un coup.','Remettre sur le feu et remuer avec un fouet jusqu''à l''obtention d''un mélange bien lisse.', 'Ajouter le lait peu à peu. Remuer sans cesse, jusqu''à ce que le mélange s''épaississe.', 'Ensuite, parfumer avec la muscade, saler, poivrer. Laisser cuire environ 5 minutes, à feu très doux, en remuant. Réserver.', 'Préchauffer le four à 200°C (thermostat 6-7). Huiler le plat à lasagnes. Poser une fine couche de béchamel puis des feuilles de lasagnes, de la bolognaise, de la béchamel et du parmesan. Répéter l''opération 3 fois de suite.', 'Sur la dernière couche de lasagnes, ne mettre que de la béchamel et recouvrir de fromage râpé. Parsemer quelques noisettes de beurre.', 'Enfourner pour environ 25 minutes de cuisson', 'Déguster', null, null, null, null, 'https://images.radio-canada.ca/q_auto,w_800/v1/alimentation/recette/1x1/lasagne.jpg' );

