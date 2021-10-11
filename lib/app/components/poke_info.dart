import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/app_controller.dart';
import 'package:pokedex/app/model/Pokemon.dart';

class PokeInfo extends StatelessWidget {
  final Color colorTypePokemon;
  final Pokemon pokemon;
  final AppController appController = Modular.get();
  PokeInfo({Key? key, required this.colorTypePokemon, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      width: size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Height',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(width: 60),
                Text(
                  '${pokemon.height}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Weight', style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 60),
                Text('${pokemon.weight}',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Candy', style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 60),
                Text('${pokemon.candy}',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Egg', style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 60),
                Text('${pokemon.egg}',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Spawn Chance',
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 60),
                Text('${pokemon.spawnChance}',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Spawn Time',
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 60),
                Text('${pokemon.spawnTime}',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
