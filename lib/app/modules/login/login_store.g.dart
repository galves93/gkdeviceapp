// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  final _$usuarioControllerAtom =
      Atom(name: '_LoginStoreBase.usuarioController');

  @override
  TextEditingController get usuarioController {
    _$usuarioControllerAtom.reportRead();
    return super.usuarioController;
  }

  @override
  set usuarioController(TextEditingController value) {
    _$usuarioControllerAtom.reportWrite(value, super.usuarioController, () {
      super.usuarioController = value;
    });
  }

  final _$senhaControllerAtom = Atom(name: '_LoginStoreBase.senhaController');

  @override
  TextEditingController get senhaController {
    _$senhaControllerAtom.reportRead();
    return super.senhaController;
  }

  @override
  set senhaController(TextEditingController value) {
    _$senhaControllerAtom.reportWrite(value, super.senhaController, () {
      super.senhaController = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_LoginStoreBase.formKey');

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$validaLoginAsyncAction = AsyncAction('_LoginStoreBase.validaLogin');

  @override
  Future validaLogin(BuildContext context) {
    return _$validaLoginAsyncAction.run(() => super.validaLogin(context));
  }

  @override
  String toString() {
    return '''
usuarioController: ${usuarioController},
senhaController: ${senhaController},
formKey: ${formKey}
    ''';
  }
}
