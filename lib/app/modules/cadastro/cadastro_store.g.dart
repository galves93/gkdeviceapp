// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroStore on _CadastroStoreBase, Store {
  final _$nomeControllerAtom = Atom(name: '_CadastroStoreBase.nomeController');

  @override
  TextEditingController get nomeController {
    _$nomeControllerAtom.reportRead();
    return super.nomeController;
  }

  @override
  set nomeController(TextEditingController value) {
    _$nomeControllerAtom.reportWrite(value, super.nomeController, () {
      super.nomeController = value;
    });
  }

  final _$usuarioControllerAtom =
      Atom(name: '_CadastroStoreBase.usuarioController');

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

  final _$emailControllerAtom =
      Atom(name: '_CadastroStoreBase.emailController');

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  final _$senhaControllerAtom =
      Atom(name: '_CadastroStoreBase.senhaController');

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

  final _$confirmaSenhaControllerAtom =
      Atom(name: '_CadastroStoreBase.confirmaSenhaController');

  @override
  TextEditingController get confirmaSenhaController {
    _$confirmaSenhaControllerAtom.reportRead();
    return super.confirmaSenhaController;
  }

  @override
  set confirmaSenhaController(TextEditingController value) {
    _$confirmaSenhaControllerAtom
        .reportWrite(value, super.confirmaSenhaController, () {
      super.confirmaSenhaController = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_CadastroStoreBase.formKey');

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

  final _$validateFormAsyncAction =
      AsyncAction('_CadastroStoreBase.validateForm');

  @override
  Future validateForm(BuildContext context) {
    return _$validateFormAsyncAction.run(() => super.validateForm(context));
  }

  @override
  String toString() {
    return '''
nomeController: ${nomeController},
usuarioController: ${usuarioController},
emailController: ${emailController},
senhaController: ${senhaController},
confirmaSenhaController: ${confirmaSenhaController},
formKey: ${formKey}
    ''';
  }
}
