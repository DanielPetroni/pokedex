import 'package:pokedex/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/home/home_module.dart';
import 'package:pokedex/app/pages/pokemon_page.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ChildRoute('/pokemon',
        child: (context, arguments) => PokemonPage(arguments.data),
        transition: TransitionType.rightToLeftWithFade)
  ];
}
