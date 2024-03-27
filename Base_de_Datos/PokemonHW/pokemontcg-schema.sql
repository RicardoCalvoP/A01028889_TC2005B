SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS pokemontcg;
CREATE SCHEMA pokemontcg;
USE pokemontcg;

-- PLANTA Bulbasaur, Ivysaur, Venusaur
-- FUEGO Charmander, Charmeleon, Charizard
-- AGUA Squirtle, Wartortle, Blastoise
-- BICHO Caterpie, Metapod, Butterfree
-- ELECTRICO Pichu, Pikachu, Raichu
-- NORMAL Rattata, Raticate
-- VOLADOR Spearow, Fearow
-- VENENO Nidoran♀, Nidorina, Nidoqueen
-- TIERRA Sandshrew, Sandslash
-- ROCA Geodude, Graveler, Golem
-- FANTASMA Gastly, Haunter, Gengar
-- PSIQUICO Abra, Kadabra, Alakazam
-- HIELO Seel, Dewgong
-- DRAGON Dratini, Dragonair, Dragonite
-- SINIESTRO Umbreon, Murkrow, Slowking
-- ACERO Magnemite, Magneton, Farfetch
-- HADA Clefairy, Clefable
-- LUCHA Mankey, Primeape

-- -----------------------------------------------------
-- CARD TABLE 
-- -----------------------------------------------------

CREATE TABLE card (
    card_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    type VARCHAR(45) NOT NULL,
    name VARCHAR(45) NOT NULL,
    stage VARCHAR(45) DEFAULT NULL,
    health VARCHAR(45),
    element VARCHAR(45),
    evolves_from VARCHAR(45),
    first_attack VARCHAR(90),
    first_attack_effect VARCHAR(300),
    first_attack_damage SMALLINT UNSIGNED,
    first_attack_energy_cost SMALLINT UNSIGNED,
    first_attack_element_cost SMALLINT UNSIGNED,
    second_attack VARCHAR(90),
    second_attack_effect VARCHAR(300),
    second_attack_dmg SMALLINT UNSIGNED,
    second_attack_energy_cost SMALLINT UNSIGNED,
    second_attack_element_cost SMALLINT UNSIGNED,
    weakness VARCHAR(45) DEFAULT NULL,
    resistance VARCHAR(45) DEFAULT NULL,
    retreat_cost SMALLINT UNSIGNED,
    PRIMARY KEY (card_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- PLAYER TABLE 
-- -----------------------------------------------------

CREATE TABLE player (
    player_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(45) NOT NULL,
    description VARCHAR(180) DEFAULT NULL,
    level SMALLINT DEFAULT 1 NOT NULL,
    password VARCHAR(45) NOT NULL,
    PRIMARY KEY(player_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- -----------------------------------------------------
-- DECK TABLE
-- -----------------------------------------------------

CREATE TABLE deck(
	deck_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    deck_name VARCHAR(45) NOT NULL,
    deck_description VARCHAR(45) DEFAULT NULL,
    deck_size SMALLINT NOT NULL,
    PRIMARY KEY(Deck_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- INVENTORY TABLE
-- -----------------------------------------------------

CREATE TABLE inventory(
	inventory_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    card_id SMALLINT UNSIGNED NOT NULL,
    player_id SMALLINT UNSIGNED NOT NULL,
    deck_id SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(card_id) REFERENCES card(card_id),
    FOREIGN KEY(player_id) REFERENCES player(player_id),
    FOREIGN KEY(deck_id) REFERENCES deck(deck_id),
	PRIMARY KEY(inventory_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- INVENTORY TABLE
-- -----------------------------------------------------

CREATE TABLE flip(
	flip_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    player1_id SMALLINT UNSIGNED NOT NULL,
    player2_id SMALLINT UNSIGNED NOT NULL,
    player1_selection VARCHAR(45) DEFAULT 'head' NOT NULL,
    player2_selection VARCHAR(45) DEFAULT 'tail' NOT NULL,
    flip_winner SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(player1_id) REFERENCES player(player_id),
    FOREIGN KEY(player2_id) REFERENCES player(player_id),
    FOREIGN KEY(flip_winner) REFERENCES player(player_id),
    PRIMARY KEY(flip_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE game(
	match_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    player1_id SMALLINT UNSIGNED NOT NULL,
    player2_id SMALLINT UNSIGNED NOT NULL,
    winner SMALLINT UNSIGNED NOT NULL,
    player1_deck SMALLINT UNSIGNED NOT NULL,
    player2_deck SMALLINT UNSIGNED NOT NULL,
    FOREIGN KEY(player1_id) REFERENCES player(player_id),
    FOREIGN KEY(player2_id) REFERENCES player(player_id),
    FOREIGN KEY(winner) REFERENCES player(player_id),
    FOREIGN KEY(player1_deck) REFERENCES deck(deck_id),
    FOREIGN KEY(player2_deck) REFERENCES deck(deck_id),
    PRIMARY KEY(match_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;