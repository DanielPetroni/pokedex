import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/app/components/list_types.dart';
import 'package:pokedex/app/model/Pokemon.dart';
import 'package:pokedex/app/utils/poke_color.dart';

// ignore: must_be_immutable
class PokeCard extends StatelessWidget {
  final Pokemon pokemon;
  PokeColors? pokeColors;
  PokeCard({Key? key, required this.pokemon}) {
    pokeColors = PokeColors();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: pokeColors?.getColorbyType(pokemon.type!.first),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 90,
                right: 0,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/pokeball.png',
                      height: 80,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    Hero(
                      tag: pokemon,
                      child: CachedNetworkImage(
                        imageUrl: '${pokemon.img}',
                        placeholder: (context, url) => CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error,
                            color: Colors.white.withOpacity(0.3)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${pokemon.name!}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'teko'),
                      overflow: TextOverflow.ellipsis),
                  ListType(pokemon: pokemon)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
