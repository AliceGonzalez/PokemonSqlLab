PART 3: Joins and Groups

What is each pokemon's primary type?
select pokemons.name PokemonsName, types.name Type from pokemons left join types ON pokemons.primary_type = types.id;

What is Rufflet's secondary type?
select pokemons.name PokemonsName, types.name Type from pokemons left join types ON pokemons.secondary_type = types.id where pokemons.name = "Rufflet";

What are the names of the pokemon that belong to the trainer with trainerID 303?
select Pokemon_trainer.trainerid TrainerID, pokemons.name PokemonsName from pokemon_trainer left join pokemons on pokemon_trainer.pokemon_id = pokemons.id where trainerID = 303;

How many pokemon have a secondary type Poison
select count(pokemons.name) AmountOfPokemons, types.name TypeName from pokemons left join types on pokemons.secondary_type = types.id  where secondary_type = 7;

What are all the primary types and how many pokemon have that type?
select types.name TypeName, count(pokemons.name) AmountOfPokemon from types left join pokemons on pokemons.primary_type = types.id group by types.id;

How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
select trainerid TrainerID , count(pokelevel) AmountOfLevel100Pokemon from pokemon_trainer where pokelevel = 100 group by trainerid;

How many pokemon only belong to one trainer and no other?
select count(*) as PokemonHaveOneTrainer from(select pokemon_id from pokemon_trainer group by pokemon_trainer.pokemon_id having count(pokemon_trainer.pokemon_id) = 1) as singleTrainerOnePokemon;
