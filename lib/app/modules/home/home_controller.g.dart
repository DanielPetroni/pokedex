// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_HomeControllerStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getAllPokemonsAsyncAction =
      AsyncAction('_HomeControllerStoreBase.getAllPokemons');

  @override
  Future<void> getAllPokemons() {
    return _$getAllPokemonsAsyncAction.run(() => super.getAllPokemons());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
