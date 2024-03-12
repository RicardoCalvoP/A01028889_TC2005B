CREATE DATABASE  IF NOT EXISTS `pokemontcg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pokemontcg`;

-- -----------------------------------------------------
-- CARD TABLE 
-- -----------------------------------------------------

DROP TABLE IF EXISTS Card;

CREATE TABLE Card ( 
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
-- PLAYER TABLE 
-- -----------------------------------------------------

DROP TABLE IF EXISTS Player;

CREATE TABLE Player (
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

DROP TABLE IF EXISTS Deck;

CREATE TABLE Deck(
	Deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Deck_name VARCHAR(45) NOT NULL,
    Deck_description VARCHAR(45) DEFAULT NULL,
    Deck_size SMALLINT NOT NULL,
    PRIMARY KEY(Deck_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- INVENTORY TABLE
-- -----------------------------------------------------

DROP TABLE IF EXISTS Inventory;

CREATE TABLE Inventory(
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

CREATE TABLE Pokemon(
	Pokemon_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Pokemon_name VARCHAR(45) NOT NULL,
    PRIMARY KEY(Pokemon_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Adding information

INSERT INTO pokemontcg.Pokemon VALUES (NULL, 'Bulbasaur');

SELECT * FROM Pokemon;