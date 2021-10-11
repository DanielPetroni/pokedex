import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/components/list_types.dart';
import 'package:pokedex/app/components/poke_info.dart';
import 'package:pokedex/app/model/Pokemon.dart';
import 'package:pokedex/app/utils/poke_color.dart';

class PokemonPage extends StatelessWidget {
  final Pokemon pokemon;
  final PokeColors pokeColors = PokeColors();
  PokemonPage(this.pokemon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorTypePokemon = pokeColors.getColorbyType(pokemon.type!.first);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              color: colorTypePokemon,
            ),
          ),
          Positioned(
            top: size.height * 0.27,
            right: size.width * 0.02,
            child: Image.asset(
              'assets/images/pokeball.png',
              color: Colors.white.withOpacity(0.3),
            ),
            height: 150,
          ),
          Positioned(
            bottom: 0,
            child: PokeInfo(
              colorTypePokemon: colorTypePokemon,
              pokemon: pokemon,
            ),
          ),
          Positioned(
              top: size.height * 0.35,
              left: size.width * 0.35,
              right: size.width * 0.35,
              child: Hero(
                tag: pokemon,
                child: CachedNetworkImage(
                  imageUrl: '${pokemon.img}',
                  placeholder: (context, url) => CircularProgressIndicator(
                    color: Colors.white,
                  ),
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error, color: Colors.white.withOpacity(0.3)),
                  height: 80,
                  width: 80,
                ),
              )),
          Positioned(
            top: size.height * 0.09,
            left: size.width * 0.02,
            child: Text(
              pokemon.name!,
              style: TextStyle(
                  fontSize: 56, fontFamily: 'teko', color: Colors.white),
            ),
          ),
          Positioned(
            top: size.height * 0.19,
            left: size.width * 0.02,
            child: ListType(
              pokemon: pokemon,
              isRow: true,
            ),
          ),
        ],
      ),
    );
  }
}
