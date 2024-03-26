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

INSERT INTO `card` VALUES(1,'Pokemon','Bulbasaur',NULL,'Grass',70,'Vine Whip',10,1,1,'Razor Leaf',20,2,1,'Basic',NULL,'Fire',NULL,2),
                        (2,'Pokemon','Ivysaur','Your opponent´s active pokemon is now confused and poisoned','Grass',100,'Razor Leaf',30,2,1,'Toxic Whip',50,4,2,'Stage 1','Bulbasaur','Fire',NULL,4),
                        (3,'Pokemon','M-Venusaur-EX','When Knock Out, opponent takes 2 prize cards','Grass',230,'Crisis Vine',120,4,3,NULL,NULL,NULL,NULL,'Mega','Venusaur','Fire',NULL,4),
                        (4,'Pokemon','Charmander',NULL,'Fire',70,'Scratch',10,1,0,'Flame Tail',20,2,1,'Basic', NULL, 'Water', NULL, 1),
                        (5,'Pokemon','Charmeleon',NULL,'Fire',90,'Claw Slash',30,2,0,'Heat Blast',70,3,2,'Stage 1','Charmander','Water',NULL,2),
                        (6,'Pokemon','Charizard-GX','When knocked out opponent takes 2 Prize cards','Fire',250,'Flamethower',140,4,2,'Flare Blitz-GX',300,4,2,'Stage 2','Charmeleon','Water',NULL,3),
                        (7,'Pokemon','Squirtle',NULL,'Water',70,'Tackle',10,1,0,'Rain Splash',20,2,1,'Basic',NULL,'Grass',NULL,1),
                        (8,'Pokemon','Wartortle',NULL,'Water',90,'Tackle',30,2,0,'Waterfall',70,3,2,'Stage 1','Squirtle','Grass', NULL,2),
                        (9,'Pokemon','Blastoise','This Pokemon does 30 damage to itself','Water',160,'Hydro Tackle',150,3,3,NULL,NULL,NULL,NULL,'Stage 2','Wartortle','Grass',NULL,3),
                        (10,'Pokemon','Caterpie',NULL,'Grass',60,'Tackle',10,1,1,NULL,NULL,NULL,NULL,'Baisc',NULL,'Fire',NULL,1),
                        (11,'Pokemon','Metapod',NULL,'Grass',90,'Tackle',30,2,1,NULL,NULL,NULL,NULL,'Stage 1','Caterpie','Fire',NULL,2),
                        (12,'Pokemon','Butterfree','Your opponent’s Active Pokémon is now Burned, Confused, and Poisoned','Grass',140,'Panic Posion',30,1,1,'Cutting Wind',80,2,1,'Stage 1','Metapod','Fire',NULL,1),
                        (13,'Pokemon','Rattata',NULL,'Colorless',30,'Gnaw',20,1,0,NULL,NULL,NULL,NULL,'Basic',NULL,'Fighting',NULL,1),
                        (14,'Pokemon','Raticate','If your opponent’s Active Pokémon is an Evolution Pokémon, switch this Pokémon with 1 of your Benched Pokémon','Colorless',70,'Escaping Incisors',70,2,0,NULL,NULL,NULL,NULL,'Stage 1','Rattata','Fighting',NULL,1),
                        (15,'Pokemon','Spearow',NULL,'Colorless',50,'Wing Attack',10,1,0,'Claw',30,2,0,'Basic',NULL,'Electric','Fighting',1),
                        (16,'Pokemon','Fearow',NULL,'Colorless',100,'Peck',30,1,0,'Drill Run',70,4,0,'Stage 1','Spearow','Electric','Fighting',1),
                        (17,'Pokemon','Ekans',NULL,'Psychic',70,'Bite',20,2,0,NULL,NULL,NULL,NULL,'Basic',NULL,'Psychic',NULL,2),
                        (18,'Pokemon','Arbok','If this Pokémon used Wrap during your last turn, Heavy Choke does 120 more damage.','Psychic',120,'Wrap',30,1,0,'Heavy Choke',50,2,1,'Stage 1','Ekans','Psychic',NULL,2),
                        (19,'Pokemon','Pichu','Flip 2 coins. This attack does 20 damage times the number of heads. If either coin is heads, the  Defending Pokémon is now Confused','Lightning',60,'Bustle',20,2,2,NULL,NULL,NULL,NULL,'Basic',NULL,'Fighting',NULL,1),
                        (20,'Pokemon','Pikachu','Flip a coin. If heads, your opponent’s Active Pokémon is now Paralyzed.','Lightning',70,'Thunder Wave',0,1,1,'Electro Ball',50,3,1,'Basic',NULL,'Fighting','Metal',1),
                        (21,'Pokemon','Raichu','Flip a coin. If heads, Quick Attack does 30 more damage','Lightning',110,'Quick Attack',10,1,1,'Electric Surfer',70,3,1,'Stage 1','Pikachu','Fighting','Metal',1),
                        (22,'Pokemon','Sandshrew','Flip a coin. If heads, the Defending Pokémon is now Poisoned','Fighting',10,'Poison Needle',10,1,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Grass',NULL,1),
                        (23,'Pokemon','Sandslash',NULL,'Fighting',90,'Slash',20,1,1,'Swift',80,3,0,'Stage 1','Sandshrew','Grass',NULL,1),
                        (24,'Pokemon','Clefairy','Flip 2 coins. This attack does 10 damage for each heads.','Fairy',60,'Double Slap',1,1,0,NULL,NULL,NULL,NULL,'Basic',NULL,'Metal','Darkness',1),
                        (25,'Pokemon','Clefable',NULL,'Fairy',120,'Pound',40,2,1,'Moon Impact',90,3,2,'Stage 1','Clefairy','Metal','Darkness',2),
                        (26,'Pokemon','Drowzee',NULL,'Psychic',70,'Pound',10,1,0,NULL,NULL,NULL,NULL,'Basic',NULL,'Darkness','Fighting',2),
                        (27,'Pokemon','Hypno',NULL,'Psychic',110,'Zen Headbutt',90,3,2,NULL,NULL,NULL,NULL,'Stage 1','Drowzee','Darkness','Fighting',2),
                        (28,'Pokemon','Machop',NULL,'Fighting',60,'Dynamic Chop',50,2,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Psychic',NULL,2),
                        (29,'Pokemon','Machoke',NULL,'Fighting',100,'Strength',30,1,1,'Seismic',50,2,2,'Stage 1','Machop','Psychic',NULL,2),
                        (30,'Pokemon','Machamp','Macho Revenge does 20 damage for each Fighting Pokémon in your discard pile','Fighting',170,'Macho Revenge',20,2,1,'Dynamite Punch',200,3,2,'Stage 2','Machoke','Psychic',NULL,3),
                        (31,'Pokemon','Geodude',NULL,'Fighting',60,'Rollout',10,1,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Grass',NULL,2),
                        (32,'Pokemon','Graveler',NULL,'Fighting',110,'Tackle',30,1,1,'Boulder Crush',70,3,1,'Stage 1','Geodude','Grass',NULL,4),
                        (33,'Pokemon','Golem',NULL,'Fighting',150,'Stone Edge',60,3,2,'Explosion',150,4,2,'Stage 2','Graveler','Grass',NULL,3),
                        (34,'Pokemon','Gastly',NULL,'Psychic',60,'Fade Out',20,1,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Darkness','Fighting',1),
                        (35,'Pokemon','Haunter','Your opponent’s Active Pokémon is now Asleep','Psychic',70,'Nightmare',20,1,0,'Spooky Shot',40,2,1,'Stage 1','Gastly','Darkness','Fighting',1),
                        (36,'Pokemon','Gengar',NULL,'Psychic',130,'Fade to Black',70,3,1,NULL,NULL,NULL,NULL,'Stage 2','Haunter','Darkness','Fighting',2),
                        (37,'Pokemon','Cubchoo',NULL,'Water',70,'Chop',10,1,0,'Icicle',30,2,1,'Basic',NULL,'Metal',NULL,2),
                        (38,'Pokemon','Beartic','Frozen Slice does 50 damage to itself','Water',140,'Slash',40,2,0,'Frozen Slice',150,3,1,'Stage 1','Cubchoo','Metal',NULL,3),
                        (39,'Pokemon','Dratini',NULL,'Dragon',60,'Dragon Rage',60,1,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Fairy',NULL,2),
                        (40,'Pokemon','Dragonair',NULL,'Dragon',100,'Dragon Tail',60,3,0,'Waterfall',80,4,3,'Stage 1','Dratini','Fairy',NULL,2),
                        (41,'Pokemon','Dragonite',NULL,'Dragon',160,'Dragon Wave',130,2,2,'Gaint Tail',200,5,0,'Stage 2','Dragonair','Fairy',NULL,4),
                        (42,'Pokemon','Poochyena',NULL,'Dark',60,'Bite',20,2,1,NULL,NULL,NULL,NULL,'Basic',NULL,'Fighting','Psychic',1),
                        (43,'Pokemon','Mightyena',NULL,'Dark',70,'Bite',20,2,0,'Ambush',30,3,1,'Stage 1','Poochyena','Fighting','Psychic',1),
                        (44,'Pokemon','Klink',NULL,'Metal',50,'Vise Grip',10,1,1,'Spinning Attack',20,2,1,'Basic',NULL,'Fire','Grass',1),
                        (45,'Pokemon','Klang',NULL,'Metal',90,'Beam',20,1,1,'Guard Press',70,3,1,'Stage 1','Klink','Fire','Grass',2),
                        (46,'Pokemon','Klinklang',NULL,'Metal',150,'Beam',60,2,0,'Clockwork',200,3,1,'Stage 2','Klang','Fire','Grass',3),
                        (47,'Trainer','Buddy-Buddy Poffin','Search your deck for up to 2 Basic Pokémon with 70 HP or less and put them onto your Bench. Then, shuffle your deck','Item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
                        (48,'Trainer','Maximum Belt','Attacks used by the Pokémon this card is attached to do 50 more damage to your opponent’s Active Pokémon ex (before applying Weakness and Resistance)','Pokemon Tool',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
                        (49,'Trainer','Neo Upper Energy','As long as this card is attached to a Pokémon, it provides Colorless Energy. If this card is attache to a Stage 2 Pokémon, this card provides every type of Energy but provides only 2 Energy at a time.','Special Energy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
                        (50,'Trainer','Buddy-Buddy Poffin','You can use this card only if you discard another card from your hand. Draw a card for each of your opponent’s Benched Pokémon','Supporter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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



SELECT * FROM card;

select	* FROM player;