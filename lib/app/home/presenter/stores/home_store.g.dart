// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<LoggedUserInfo?>? _$userComputed;

  @override
  LoggedUserInfo? get user =>
      (_$userComputed ??= Computed<LoggedUserInfo?>(() => super.user,
              name: 'HomeStoreBase.user'))
          .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: 'HomeStoreBase.hasError'))
      .value;

  late final _$paramsAtom =
      Atom(name: 'HomeStoreBase.params', context: context);

  @override
  Params? get params {
    _$paramsAtom.reportRead();
    return super.params;
  }

  @override
  set params(Params? value) {
    _$paramsAtom.reportWrite(value, super.params, () {
      super.params = value;
    });
  }

  late final _$errorAtom = Atom(name: 'HomeStoreBase.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  @override
  String toString() {
    return '''
params: ${params},
error: ${error},
user: ${user},
hasError: ${hasError}
    ''';
  }
}
