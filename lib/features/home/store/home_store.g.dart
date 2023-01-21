// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$iconIndexAtom =
      Atom(name: '_HomeStore.iconIndex', context: context);

  @override
  int get iconIndex {
    _$iconIndexAtom.reportRead();
    return super.iconIndex;
  }

  @override
  set iconIndex(int value) {
    _$iconIndexAtom.reportWrite(value, super.iconIndex, () {
      super.iconIndex = value;
    });
  }

  late final _$textIndexAtom =
      Atom(name: '_HomeStore.textIndex', context: context);

  @override
  int get textIndex {
    _$textIndexAtom.reportRead();
    return super.textIndex;
  }

  @override
  set textIndex(int value) {
    _$textIndexAtom.reportWrite(value, super.textIndex, () {
      super.textIndex = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void changeIconIndex(int index) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.changeIconIndex');
    try {
      return super.changeIconIndex(index);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTextIndex(int index) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.changeTextIndex');
    try {
      return super.changeTextIndex(index);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iconIndex: ${iconIndex},
textIndex: ${textIndex}
    ''';
  }
}
