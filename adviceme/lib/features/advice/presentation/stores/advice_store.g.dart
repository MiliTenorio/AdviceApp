// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advice_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdviceStore on _AdviceStore, Store {
  Computed<bool>? _$isFavoriteComputed;

  @override
  bool get isFavorite =>
      (_$isFavoriteComputed ??= Computed<bool>(() => super.isFavorite,
              name: '_AdviceStore.isFavorite'))
          .value;

  late final _$adviceTextAtom =
      Atom(name: '_AdviceStore.adviceText', context: context);

  @override
  String get adviceText {
    _$adviceTextAtom.reportRead();
    return super.adviceText;
  }

  @override
  set adviceText(String value) {
    _$adviceTextAtom.reportWrite(value, super.adviceText, () {
      super.adviceText = value;
    });
  }

  late final _$isLoadingAdviceAtom =
      Atom(name: '_AdviceStore.isLoadingAdvice', context: context);

  @override
  bool get isLoadingAdvice {
    _$isLoadingAdviceAtom.reportRead();
    return super.isLoadingAdvice;
  }

  @override
  set isLoadingAdvice(bool value) {
    _$isLoadingAdviceAtom.reportWrite(value, super.isLoadingAdvice, () {
      super.isLoadingAdvice = value;
    });
  }

  late final _$isLoadingFavoritesAtom =
      Atom(name: '_AdviceStore.isLoadingFavorites', context: context);

  @override
  bool get isLoadingFavorites {
    _$isLoadingFavoritesAtom.reportRead();
    return super.isLoadingFavorites;
  }

  @override
  set isLoadingFavorites(bool value) {
    _$isLoadingFavoritesAtom.reportWrite(value, super.isLoadingFavorites, () {
      super.isLoadingFavorites = value;
    });
  }

  late final _$favoritesAtom =
      Atom(name: '_AdviceStore.favorites', context: context);

  @override
  ObservableList<String> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(ObservableList<String> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  late final _$fetchAdviceAsyncAction =
      AsyncAction('_AdviceStore.fetchAdvice', context: context);

  @override
  Future<void> fetchAdvice() {
    return _$fetchAdviceAsyncAction.run(() => super.fetchAdvice());
  }

  late final _$loadFavoritesAsyncAction =
      AsyncAction('_AdviceStore.loadFavorites', context: context);

  @override
  Future<void> loadFavorites() {
    return _$loadFavoritesAsyncAction.run(() => super.loadFavorites());
  }

  late final _$removeFavoriteAsyncAction =
      AsyncAction('_AdviceStore.removeFavorite', context: context);

  @override
  Future<void> removeFavorite(String adviceToRemove) {
    return _$removeFavoriteAsyncAction
        .run(() => super.removeFavorite(adviceToRemove));
  }

  late final _$_AdviceStoreActionController =
      ActionController(name: '_AdviceStore', context: context);

  @override
  void toggleFavorite() {
    final _$actionInfo = _$_AdviceStoreActionController.startAction(
        name: '_AdviceStore.toggleFavorite');
    try {
      return super.toggleFavorite();
    } finally {
      _$_AdviceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
adviceText: ${adviceText},
isLoadingAdvice: ${isLoadingAdvice},
isLoadingFavorites: ${isLoadingFavorites},
favorites: ${favorites},
isFavorite: ${isFavorite}
    ''';
  }
}
