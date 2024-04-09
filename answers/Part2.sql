PART 2 : Simple Selects and Counts
What are all the types of pokemon that a pokemon can have?
SELECT * FROM types;
|  1 | Normal   |
|  2 | Water    |
|  3 | Grass    |
|  4 | Rock     |
|  5 | Fire     |
|  6 | Ground   |
|  7 | Poison   |
|  8 | Bug      |
|  9 | Electric |
| 10 | Dragon   |
| 11 | Steel    |
| 12 | Dark     |
| 13 | Fighting |
| 14 | Psychic  |
| 15 | Ghost    |
| 16 | Fairy    |
| 17 | Ice      |
| 18 | Flying   |

What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id=45;
+-------+
| name  |
+-------+
| Eevee |
+-------+

How many pokemon are there?
mysql> SELECT COUNT(*) FROM pokemon_trainer;)
+----------+
| COUNT(*) |
+----------+
|    57608 |
+----------+

How many types are there?
mysql> SELECT COUNT(*) FROM Types;
+----------+
| COUNT(*) |
+----------+
|       18 |
+----------+

How many pokemon have a secondary type?
mysql> SELECT * FROM pokemons WHERE secondary_type IN NOT NULL;
316 rows in set (0.00 sec)