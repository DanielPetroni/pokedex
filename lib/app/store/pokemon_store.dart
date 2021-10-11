import 'package:mobx/mobx.dart';
import 'package:pokedex/app/model/Pokemon.dart';

part 'pokemon_store.g.dart';

class PokemonStore = _PokemonStoreBase with _$PokemonStore;

abstract class _PokemonStoreBase with Store {
  @observable
  Pokemons pokemons = Pokemons();

}
