SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

USE pokemontcg;

-- * For the pokemontcg shema we are hoing to use the following pokemons
-- GRASS Bulbasaur, Ivysaur, Venusaur
-- FIRE Charmander, Charmeleon, Charizard
-- WATER Squirtle, Wartortle, Blastoise
-- BUG Caterpie, Metapod, Butterfree
-- NORMAL Rattata, Raticate
-- FLYING Spearow, Fearow
-- POSION Ekans, Arbok
-- ELECTRIC Pichu, Pikachu, Raichu
-- GROUND Sandshrew, Sandslash
-- FAIRY Clefairy, Clefable
-- PSYCHIC Abra, Kadabra, Alakazam
-- FIGHTING Machop, Cachoke, Machamp
-- ROCK Geodude, Graveler, Golem
-- FANTASMA Gastly, Haunter, Gengar
-- HIELO CUBCHOO, BEARTIC
-- DRAGON Dratini, Dragonair, Dragonite
-- DARK POOCHYENA, MIGHTYENA
-- ACERO KLINK, KLANG, KLINKLANG



-- 
-- Set data for cards
--

-- id, type ,name, desc, element, hp, first atack name, first atack damage, first atack cost, first atack element cost, second atack name , second atack damage, second atack cost, second atack element cost, stage, pre-ev , waekness, resistanec, r-cost

INSERT INTO `card` VALUES 
(1,'Pokemon','Bulbasaur','Basic',70,'Grass',NULL,'Vine Whip',NULL,10,1,1,'Razor Leaf',NULL,20,2,1,'Fire',NULL,2),
(2,'Pokemon','Ivysaur','Stage 1',100,'Grass','Bulbasaur','Razor Leaf',NULL,30,2,1,'Toxic Whip','Your opponents Active Pokemon is now Confused and Poisoned',50,4,2,'Fire',NULL,4),
(3,'Pokemon','Venusaur-EX','Basic',180,'Grass',NULL,'Poison Powder','Your opponents Active Pokemon is now Poisoned',60,3,1,'Jungle Hammer','Heal 30 damage from this pokemon',90,4,2,'Fire',NULL,4),
(4,'Pokemon','Charmander','Basic',70,'Fire',NULL,'Fire Fang','Your opponents Active Pokemon is now Burned',20,2,1,NULL,NULL,NULL,NULL,NULL,'Water',NULL,2),
(5,'Pokemon','Charmeleon','Stage 1',90,'Fire','Charmander','Claw Slash',NULL,30,2,NULL,'Heat Blast',NULL,70,3,2,'Water',NULL,2),
-- (6,'Pokemon','Special Delivery Charizard','Stage 2',160,'Fire','Charmeleon','Happy Delivery','Search your deck for up to Item cards, reveal them, and put them into your hand. Then, shuffle your deck',NULL,1,NULL,'Flamethrower','Discard an Energy from this Pokemon',160,3,2,'Water',NULL,NULL,3),
(7,'Pokemon','Squirtle','Basic',70,'Water',NULL,'Tackle',NULL,10,1,NULL,'Rain Splash',NULL,20,2,1,'Grass',NULL,1),
(8,'Pokemon','Wartortle','Stage 1',90,'Water','Squirtle','Tackle',NULL,30,2,NULL,'Waterfall',NULL,70,3,2,'Grass',NULL,2),
(9,'Pokemon','Blastoise V','Basic',220,'Water',NULL,'Water Gun',NULL,30,1,1,'Torrential Cannon','During your next turn, this Pokemon cant use Torrential Cannon',200,3,3,'Lightning',NULL,3),
(10,'Pokemon','Caterpie','Basic',50,'Grass',NULL,'Surprise Attack','Flip a coin, if tails, this attack does nothing',20,1,1,NULL,NULL,NULL,NULL,NULL,'Fire',NULL,1),
(11,'Pokemon','Metapod','Stage 1',90,'Grass','Caterpie','Tackle',NULL,30,2,1,NULL,NULL,NULL,NULL,NULL,'Fire',NULL,2),
(12,'Pokemon','Butterfree','Stage 2',140,'Grass','Metapod','Panic Poison','Your opponents Active Pokemon is now Burned, Confused and Poisoned',30,1,1,'Cutting Wind',NULL,80,2,NULL,'Fire',NULL,1),
(13,'Pokemon','Rattata','Basic',30,'Colorless',NULL,'Gnaw',NULL,30,1,NULL,NULL,NULL,NULL,NULL,NULL,'Fighting',NULL,1),
(14,'Pokemon','Raticate','Stage 1',70,'Colorless','Rattata','Pickup','Search your discard pile for a Basic Pokémon (or Evolution card), a Trainer card, and an Energy card. Show them to your opponent and put them into your hand',NULL,1,NULL,'Quick Attack','Flip a coin, if heads does 10 damage plus 40 more damage',10,1,NULL,'Fighting',NULL,1),
(15,'Pokemon','Spearow','Basic',60,'Colorless',NULL,'Peck',NULL,30,2,NULL,NULL,NULL,NULL,NULL,NULL,'Lightning','Fighting',1),
(16,'Pokemon','Fearow','Stage 1',90,'Colorless','Spearow','Drill Peck',NULL,70,1,NULL,NULL,NULL,NULL,NULL,NULL,'Lightning','Fighting',1),
(17,'Pokemon','Ekans','Basic',70,'Psychic',NULL,'Bite',NULL,20,2,NULL,NULL,NULL,NULL,NULL,NULL,'Psychic',NULL,2),
(18,'Pokemon','Arbok','Stage 1',120,'Psychic','Ekans','Wrap','Flip a coin if heads your opponent Active Pokémon is now Paralyzed',30,1,NULL,'Heavy Choke','If this Pokemon used Wrap During your last turn, attack does 120 more damage',50,2,1,'Psychic',NULL,2),
(19,'Pokemon','Pichu','Basic',60,'Lightning',NULL,'Bustle','Flip 2 coins this attack does 20 damage times the number of heads if either coin is heads the Defending Pokémon is now Confused',20,2,2,NULL,NULL,NULL,NULL,NULL,'Fighting',NULL,1),
(20,'Pokemon','Pikachu','Basic',60,'Lightning',NULL,'Tail Whap',NULL,10,1,NULL,'Thunder Shock','Flip a coin, if heads your opponents Active Pokemon is now Paralyzed',20,2,1,'Fighting','Metal',1),
(21,'Pokemon','Raichu','Stage 1',110,'Lightning','Pikachu','Quick Attack','Flip a coin if heads this attack does 30 more damage',10,1,1,'Electric Surfer',NULL,70,3,1,'Fighting','Metal',1),
(22,'Pokemon','Sandshrew','Basic',70,'Fighting',NULL,'Collect','Draw a card',NULL,1,NULL,'Rolling Tackle',NULL,30,3,1,'Grass',NULL,1),
(23,'Pokemon','Sandslash','Stage 1',90,'Fighting','Sandshrew','Slash',NULL,20,1,1,'Swift','This attack damage isnt affected by Weakness, Resistance, or any other effects on your opponents Active Pokémon',80,3,NULL,'Grass',NULL,1),
(24,'Pokemon','Clefairy','Basic',60,'Fairy',NULL,'Moonlight','Heal 30 damage from this Pokemon',NULL,1,NULL,'Pound',NULL,20,2,1,'Metal','Darkness',1),
(25,'Pokemon','Clefable','Stage 1',120,'Fairy','Clefairy','Pound',NULL,40,2,1,'Moon Impact',NULL,90,3,2,'Metal','Darkness',2),
(26,'Pokemon','Drowzee','Basic',70,'Psychic',NULL,'Pound',NULL,10,1,NULL,NULL,NULL,NULL,NULL,NULL,'Darkness','Fighting',2),
(27,'Pokemon','Hypno','Stage 1',110,'Psychic','Drowzee','Meditate','This attack does 10 more dammage for each damage counter on your opponent Active Pokémon',20,2,NULL,'Hypnoblast','Your opponents Active Pokemon is now Asleep',70,3,1,'Psychic',NULL,2),
(28,'Pokemon','Machop','Basic',60,'Fighting',NULL,'Low Kick',NULL,20,1,1,NULL,NULL,NULL,NULL,NULL,'Psychic',NULL,2),
(29,'Pokemon','Machoke','Stage 1',100,'Fighting','Machop','Strength',NULL,30,1,1,'Seismic Toss',NULL,50,2,2,'Psychic',NULL,2),
(30,'Pokemon','Machamp','Stage 2',160,'Fighting','Machoke','Settle the Score','This attack does 80 more damage for each Prize card your opponent took on theri last turn',20,2,2,'Submission','This Pokemon does 30 damage to itself',150,3,3,'Psychic',NULL,3),
(31,'Pokemon','Geodude','Basic',60,'Fighting',NULL,'Rollout',NULL,10,1,1,'Flail','This attack does 10 more damage time the number of damage counters on this Pokemon',10,2,NULL,'Grass',NULL,2),
(32,'Pokemon','Graveler','Stage 1',110,'Fighting','Geodude','Tackle',NULL,30,1,1,'Boulder Crush',NULL,70,3,1,'Grass',NULL,4),
(33,'Pokemon','Golem','Stage 2',150,'Fighting','Graveler','Stone Edge','Flip a coin. If heads, this attack does 30 more damage',60,3,2,'Explosion','This Pokémon does 100 damage to itself',150,4,2,'Grass',NULL,3),
(34,'Pokemon','Gastly','Basic',50,'Psychic',NULL,'Sleep Poison','Flip a coin. If heads, your opponent’s Active Pokémon is now Asleep and Poisoned',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'Darkness','Fighting',1),
(35,'Pokemon','Haunter','Stage 1',70,'Psychic','Gastly','Hypnosis','The Defending Pokémon is now Asleep',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'Colorless',NULL,1),
(36,'Pokemon','Gengar','Stage 2',130,'Psychic','Haunter','Sinister Fog','Your opponent’s Active Pokémon is now Poisoned. Put 1 damage counter on each of your opponent’s Benched Pokémon.',NULL,1,1,'Creep Show','If your opponent’s Active Pokémon has 3 or more damage counters on it, that Pokémon is Knocked Out',NULL,2,1,'Darkness','Fighting',NULL),
(37,'Pokemon','Cubchoo','Basic',70,'Water',NULL,'Fury Swipes','Flip 3 coins. This attack does 10 damage times the number of heads.',10,1,1,'Frost Breath',NULL,40,3,2,'Metal',NULL,2),
(38,'Pokemon','Beartic','Stage 1',140,'Water','Cubchoo','Slash',NULL,40,2,NULL,'Frozen Slice','This Pokémon also does 50 damage to itself','150',3,1,'Metal',NULL,3),
(39,'Pokemon','Dratini','Basic',50,'Lightning',NULL,'Hook',NULL,10,1,NULL,'Thunder Jolt','Flip a coin. If tails, Dratini does 10 damage to itself',30,2,1,'Colorless','Grass | Fighting',1),
(40,'Pokemon','Dragonair','Stage 1',90,'Dragon','Dratini','Dragon’s whish','During your next turn, you may attach any number of Energy cards from your hand to your Pokémon',NULL,1,NULL,'Tail Smack',NULL,60,3,2,'Fairy',NULL,2),
(41,'Pokemon','Dragonite','Stage 2',250,'Dragon','Dragonair','Dragon Wave','Discard a Grass Energy and a Lightning Energy from this Pokémon.',130,2,2,'Giant Tail','Flip a coin. If tails, this attack does nothing',200,5,NULL,'Fairy',NULL,2),
(42,'Pokemon','Poochyena','Basic',60,'Darkness',NULL,'Bite',NULL,20,2,1,NULL,NULL,NULL,NULL,NULL,'Fighting','Psychic',1),
(43,'Pokemon','Mightyena','Stage 1',70,'Darkness','Poochyena','Intimidating Fang','As long as Mightyena is your Active Pokémon, any damage done to your Pokémon done by an opponents attack is reduced by 10 (before applying Weakness and Resistance)',NULL,NULL,NULL,'Shakedown','Flip a coin.  If heads, choose 1 card from your opponents hand without looking and discard it',40,3,1,'Fighting','Psychic',1),
(44,'Pokemon','Klink','Basic',60,'Metal',NULL,'Call for Backup','Search your deck for a Metal Pokémon, reveal it, and put it into your hand. Then, shuffle your deck',NULL,1,1,NULL,NULL,NULL,NULL,NULL,'Fire','Grass',2),
(45,'Pokemon','Klang','Stage 1',90,'Metal','Kling','Call for Backup','Search your deck for a Metal Pokémon, reveal it, and put it into your hand. Then, shuffle your deck',NULL,1,1,'Spinning Attack',NULL,60,3,1,'Fire', 'Grass',3),
(46,'Pokemon','Klinklang','Stage 2',150, 'Metal','Klang','Beam',NULL,60, 2,NULL,'Clockwork','If you don’t have Klink and Klang on your Bench, this attack does nothing',200,3,1,'Fire','Grass',3);

INSERT INTO `player` VALUES 
    (1,'Gamer123', 'Passionate about gaming', 20, 'g7sda78'),
    (2,'GameMaster', 'Experienced player', 30, 'h8sda89'),
    (3,'GamingFanatic', 'Obsessed with gaming', 40, 'i9sda90'),
    (4,'ProGamerX', 'Competitive gamer', 35, 'j0sda01'),
    (5,'CasualGamerY', 'Plays for fun', 10, 'k1sda12'),
    (6,'LegendaryPlayer', 'Legendary status', 50, 'l2sda23'),
    (7,'GamingAddict', 'Can´t stop playing', 45, 'm3sda34'),
    (8,'GamerGirl', 'Female gamer', 18, 'n4sda45'),
    (9,'NoobGamer', 'Just starting out', 5, 'o5sda56'),
    (10,'EliteGamer', 'Elite skills', 55, 'p6sda67'),
    (11,'CasualGamerZ', 'Plays in spare time', 12, 'q7sda78'),
    (12,'GamerDude', 'Gamer from birth', 22, 'r8sda89'),
    (13,'GamingVeteran', 'Years of experience', 40, 's9sda90'),
    (14,'GamerLife', 'Gaming is life', 28, 't0sda01'),
    (15,'CasualGamerA', 'Relaxing gaming sessions', 8, 'u1sda12');

INSERT INTO `deck` VALUES 
(1, 'Deck Grass 1', 'Grass-type Pokémon deck', 40),
(2, 'Deck Fire 2', 'Fire-type Pokémon deck', 40),
(3, 'Deck Water 3', 'Water-type Pokémon deck', 40),
(4, 'Deck Electric 4', 'Electric-type Pokémon deck', 40),
(5, 'Deck Psychic 5', 'Psychic-type Pokémon deck', 40),
(6, 'Deck Fighting 6', 'Fighting-type Pokémon deck', 40),
(7, 'Deck Darkness 7', 'Darkness-type Pokémon deck', 40),
(8, 'Deck Metal 8', 'Metal-type Pokémon deck', 40),
(9, 'Deck Fairy 9', 'Fairy-type Pokémon deck', 40),
(10, 'Deck Dragon 10', 'Dragon-type Pokémon deck', 40),
(11, 'Deck Grass 11', 'Grass-type Pokémon deck', 40),
(12, 'Deck Fire 12', 'Fire-type Pokémon deck', 40),
(13, 'Deck Water 13', 'Water-type Pokémon deck', 40),
(14, 'Deck Electric 14', 'Electric-type Pokémon deck', 40),
(15, 'Deck Psychic 15', 'Psychic-type Pokémon deck', 40);

INSERT INTO `flip` VALUES
(1, 1, 2, 'head', 'tail', 1),
(2, 3, 4, 'tail', 'head', 4),
(3, 2, 3, 'head', 'head', 2),
(4, 4, 11, 'tail', 'tail', 1),
(5, 1, 13, 'head', 'tail', 3),
(6, 6, 4, 'head', 'head', 2),
(7, 8, 14, 'tail', 'tail', 3),
(8, 9, 3, 'head', 'head', 4),
(9, 12, 4, 'head', 'tail', 1),
(10, 15, 10, 'tail', 'head', 2),
(11, 13, 11, 'head', 'tail', 3),
(12, 4, 3, 'tail', 'head', 4),
(13, 1, 2, 'head', 'head', 1),
(14, 2, 3, 'tail', 'tail', 2),
(15, 3, 4, 'head', 'head', 3);

INSERT INTO `inventory` VALUES 
(1, 1, 1, 1),
(2, 3, 2, 2),
(3, 5, 3, 3),
(4, 7, 4, 4),
(5, 9, 5, 5),
(6, 11, 6, 6),
(7, 13, 7, 7),
(8, 15, 8, 8),
(9, 17, 9, 9),
(10, 19, 10, 10),
(11, 21, 11, 11),
(12, 23, 12, 12),
(13, 25, 13, 13),
(14, 27, 14, 14),
(15, 29, 15, 15);

INSERT INTO `game` VALUES
(1, 1, 2, 1, 1, 3),
(2, 3, 4, 3, 2, 4),
(3, 5, 6, 5, 3, 5),
(4, 7, 8, 7, 4, 6),
(5, 9, 10, 9, 5, 7),
(6, 11, 12, 11, 6, 8),
(7, 13, 14, 13, 7, 9),
(8, 15, 1, 15, 8, 10),
(9, 2, 3, 2, 9, 11),
(10, 4, 5, 4, 10, 12);

select * FROM game;