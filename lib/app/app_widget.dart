import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/app_controller.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  @override
  void initState() {
    controller.setDarkThemeLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness:
                controller.isDarkTheme ? Brightness.dark : Brightness.light),
      ).modular();
    });
  }
}
