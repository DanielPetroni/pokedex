import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/app_controller.dart';
import 'package:pokedex/app/components/poke_card.dart';
import 'package:pokedex/app/model/Pokemon.dart';
import 'package:pokedex/app/modules/home/home_controller.dart';
import 'package:pokedex/app/store/pokemon_store.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ModularState<Home, HomeController> {
  final PokemonStore pokemonStore = Modular.get();
  final AppController appController = Modular.get();
  @override
  void initState() {
    controller.getAllPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.07, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pokedex',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    IconButton(
                      onPressed: () => appController.setDarkTheme(),
                      icon: Observer(
                        builder: (_) => Icon(
                          appController.isDarkTheme
                              ? Icons.light_mode
                              : Icons.dark_mode,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height,
                child: Observer(
                  builder: (_) => controller.isLoading
                      ? Center(
                          child: CircularProgressIndicator(color: Colors.grey),
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(
                              left: size.width * 0.03,
                              right: size.width * 0.03,
                              top: size.height * 0.02),
                          itemCount: pokemonStore.pokemons.pokemons?.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 170,
                                  crossAxisCount: size.width < 600 ? 2 : 3,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 20),
                          itemBuilder: (_, index) {
                            Pokemon pokemon =
                                pokemonStore.pokemons.pokemons![index];
                            return GestureDetector(
                              onTap: () => Modular.to
                                  .pushNamed('/pokemon', arguments: pokemon),
                              child: PokeCard(
                                pokemon: pokemon,
                              ),
                            );
                          },
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
