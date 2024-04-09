PART 4: Final Report

SELECT pokemons.name PokemonName, trainers.trainername TrainerName,
pokemon_trainer.pokelevel Level, types1.name PrimaryType, types2.name
SecondaryType from pokemons left join pokemon_trainer on pokemons.id =
pokemon_trainer.pokemon_id left join trainers on pokemon_trainer.trainerid
= trainers.trainerid join types as types1 on pokemons.primary_type=types1.id
join types as types2 on pokemons.secondary_type=types2.id where pokemon_trainer.
pokelevel > 99 ORDER BY pokelevel desc;

//Sorting by strongest / highest Poke level