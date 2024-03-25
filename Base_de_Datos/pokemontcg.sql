DROP pokemontcg SCHEMA IF EXISTS;
CREATE SCHEMA pokemontcg /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE pokemontcg;

-- -----------------------------------------------------
-- CARD TABLE 
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS Card;

CREATE TABLE IF NOT EXISTS Card ( 
	Card_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Card_name VARCHAR(45) NOT NULL,
    Card_description VARCHAR(180) DEFAULT NULL,
    Card_health SMALLINT UNSIGNED NOT NULL,
    Card_damage SMALLINT UNSIGNED NOT NULL,
    Card_energy_cost SMALLINT UNSIGNED NOT NULL,
    Card_type VARCHAR(45) NOT NULL,
    Card_evolution SMALLINT UNSIGNED, -- CHECK IF WE CAN USE TABLE ID
    Card_debillity VARCHAR(45) DEFAULT NULL,
    Card_withdrawal_cost SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(Card_evolution) REFERENCES Pokemon(Pokemon_id),
    PRIMARY KEY (Card_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ADDING CARD TABLE INFO
-- -----------------------------------------------------

-- PLANTA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Bulbasaur', 'lorem ipsum',70,30,2,'Basic',(SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Ivysaur'),'fire',2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Ivysaur', 'lorem ipsum', 80, 60, 2, 'Evolution', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Venusaur'), 'fire', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Venusaur', 'lorem ipsum', 100, 100, 3, 'Evolution', NULL, 'fire', 3);

-- FUEGO 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charmander', 'lorem ipsum', 70, 30, 2, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Charmeleon'), 'water', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charmeleon', 'lorem ipsum', 80, 60, 2, 'Evolution', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Charizard'), 'water', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charizard', 'lorem ipsum', 100, 100, 3, 'Evolution',NULL, 'water', 3);
-- AGUA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Squirtle', 'lorem ipsum', 70, 30, 2, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Wartortle'), 'grass', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Wartortle', 'lorem ipsum', 80, 60, 2, 'Evolution', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Blastoise'), 'grass', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Blastoise', 'lorem ipsum', 100, 100, 3, 'Evolution', NULL, 'grass', 3);
-- BICHO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Caterpie', 'lorem ipsum', 40, 20, 1, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Metapod'), 'fire', 1);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Metapod', 'lorem ipsum', 60, 10, 1, 'Evolution', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Butterfree'), 'fire', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Butterfree', 'lorem ipsum', 80, 40, 2, 'Evolution', NULL, 'fire', 3);
-- ELECTRICO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Pichu', 'lorem ipsum', 40, 20, 1, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Pikachu'), 'fight', 1);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Pikachu', 'lorem ipsum', 60, 30, 2, 'Evolution', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Raichu'), 'fight', 2);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Raichu', 'lorem ipsum', 80, 40, 3, 'Evolution', NULL, 'fight', 3);

-- NORMAL
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Rattata', 'lorem ipsum', 40, 20, 1, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Raticate'), 'fight', 1);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Raticate', 'lorem ipsum', 60, 30, 2, 'Evolution', NULL, 'fight', 2);

-- VOLADOR
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Spearow', 'lorem ipsum', 50, 25, 1, 'Basic', (SELECT Pokemon_id FROM pokemontcg.Pokemon WHERE Name = 'Fearow'), 'electric', 1);
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Fearow', 'lorem ipsum', 70, 35, 2, 'Evolution', NULL, 'electric', 2);

-- VENENO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidoran♀');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidorina');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidoqueen');
-- TIERRA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Sandshrew');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Sandslash');
-- ROCA 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Geodude');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Graveler');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Golem');
-- FANTASMA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Gastly');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Haunter');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Gengar');
-- PSIQUICO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Abra');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Kadabra');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Alakazam');
-- HIELO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Seel');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dewgong');
-- DRAGON
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dratini');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dragonair');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dragonite');
-- SINIESTRO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Umbreon');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Murkrow');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Slowking');
-- ACERO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Magnemite');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Magneton');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Farfetch\'d');
-- HADA 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Clefairy');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Clefable');
-- LUCHA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Mankey');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Primeape');

-- -----------------------------------------------------
-- PLAYER TABLE 
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS Player;

CREATE TABLE IF NOT EXISTS Player (
	Player_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Player_name VARCHAR(45) NOT NULL,
    Player_description VARCHAR(180) DEFAULT NULL,
    Player_level SMALLINT DEFAULT 1 NOT NULL,
    Player_password VARCHAR(45) NOT NULL,
    Player_outfit VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY(Player_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- DECK TABLE
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS Deck;

CREATE TABLE IF NOT EXISTS Deck(
	Deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Deck_name VARCHAR(45) NOT NULL,
    Deck_description VARCHAR(45) DEFAULT NULL,
    Deck_size SMALLINT NOT NULL,
    PRIMARY KEY(Deck_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- INVENTORY TABLE
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS Inventory;

CREATE TABLE IF NOT EXISTS Inventory(
	Inventory_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Card_id SMALLINT UNSIGNED NOT NULL,
    Player_id SMALLINT UNSIGNED NOT NULL,
    Deck_id SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(Card_id) REFERENCES Card(Card_id),
    FOREIGN KEY(Player_id) REFERENCES Player(Player_id),
    FOREIGN KEY(Deck_id) REFERENCES Deck(Deck_id),
	PRIMARY KEY(Inventory_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- POKEMON TABLE
-- -----------------------------------------------------

DROP TABLE IF EXISTS Pokemon;

CREATE TABLE IF NOT EXISTS Pokemon(
	Pokemon_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Pokemon_name VARCHAR(45) NOT NULL,
    PRIMARY KEY(Pokemon_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- -----------------------------------------------------
-- ADDING POKEMON TABLE INFO
-- -----------------------------------------------------
-- PLANTA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Bulbasaur');
INSERT INTO pokemontcg.Pokemon VALUES (NULL,'Ivysaur');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Venusaur');
-- FUEGO 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charmander');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charmeleon');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Charizard');
-- AGUA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Squirtle');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Wartortle');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Blastoise');
-- BICHO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Caterpie');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Metapod');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Butterfree');
-- ELECTRICO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Pichu');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Pikachu');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Raichu');
-- NORMAL 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Rattata');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Raticate');
-- VOLADOR
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Spearow');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Fearow');
-- VENENO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidoran♀');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidorina');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Nidoqueen');
-- TIERRA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Sandshrew');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Sandslash');
-- ROCA 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Geodude');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Graveler');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Golem');
-- FANTASMA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Gastly');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Haunter');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Gengar');
-- PSIQUICO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Abra');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Kadabra');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Alakazam');
-- HIELO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Seel');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dewgong');
-- DRAGON
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dratini');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dragonair');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Dragonite');
-- SINIESTRO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Umbreon');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Murkrow');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Slowking');
-- ACERO
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Magnemite');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Magneton');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Farfetch\'d');
-- HADA 
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Clefairy');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Clefable');
-- LUCHA
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Mankey');
INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Primeape');




SELECT * FROM Pokemon;