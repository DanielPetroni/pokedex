import 'package:dio/dio.dart';

class PokeApi {
  Dio dio = Dio();
  Future<Response> getAllPokemons() async {
    Response response = await dio.get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    return response;
  }
}
