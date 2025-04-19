// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advice_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdviceStore on _AdviceStore, Store {
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

  late final _$isLoadingAtom =
      Atom(name: '_AdviceStore.isLoading', context: context);

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

  late final _$fetchAdviceAsyncAction =
      AsyncAction('_AdviceStore.fetchAdvice', context: context);

  @override
  Future<void> fetchAdvice() {
    return _$fetchAdviceAsyncAction.run(() => super.fetchAdvice());
  }

  @override
  String toString() {
    return '''
adviceText: ${adviceText},
isLoading: ${isLoading}
    ''';
  }
}
