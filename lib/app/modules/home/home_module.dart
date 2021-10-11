import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/home_controller.dart';
import 'package:pokedex/app/modules/home/home_page.dart';
import 'package:pokedex/app/store/pokemon_store.dart';

class HomeModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokemonStore()),
    Bind.lazySingleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => Home())
  ];
}
