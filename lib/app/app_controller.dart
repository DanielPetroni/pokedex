import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  bool _isDark = true;

  @action
  Future<void> setDarkTheme() async {
    _isDark = !_isDark;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', _isDark);
  }

  @action
  Future<void> setDarkThemeLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getBool('isDark'));
    _isDark = prefs.getBool('isDark') ?? true;
  }

  get isDarkTheme => _isDark;
}
