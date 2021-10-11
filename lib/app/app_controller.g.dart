// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$_isDarkAtom = Atom(name: '_AppControllerBase._isDark');

  @override
  bool get _isDark {
    _$_isDarkAtom.reportRead();
    return super._isDark;
  }

  @override
  set _isDark(bool value) {
    _$_isDarkAtom.reportWrite(value, super._isDark, () {
      super._isDark = value;
    });
  }

  final _$setDarkThemeAsyncAction =
      AsyncAction('_AppControllerBase.setDarkTheme');

  @override
  Future<void> setDarkTheme() {
    return _$setDarkThemeAsyncAction.run(() => super.setDarkTheme());
  }

  final _$setDarkThemeLocalAsyncAction =
      AsyncAction('_AppControllerBase.setDarkThemeLocal');

  @override
  Future<void> setDarkThemeLocal() {
    return _$setDarkThemeLocalAsyncAction.run(() => super.setDarkThemeLocal());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
