import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/app/model/Pokemon.dart';
import 'package:pokedex/app/repository/poke_api.dart';
import 'package:pokedex/app/store/pokemon_store.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerStoreBase with _$HomeController;

abstract class _HomeControllerStoreBase with Store {
  final PokeApi pokeApi = PokeApi();
  final PokemonStore pokemonStore = Modular.get();

  @observable
  bool isLoading = false;

  @action
  Future<void> getAllPokemons() async {
    isLoading = true;
    Response response = await pokeApi.getAllPokemons();
    if (response.statusCode == 200) {
      pokemonStore.pokemons = Pokemons.fromJson(json.decode(response.data));
    }
    isLoading = false;
  }
}
