import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/login/repositories/login_repositories.dart';
import 'package:mobx/mobx.dart';

import 'model/login_model.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  TextEditingController usuarioController = TextEditingController();

  @observable
  TextEditingController senhaController = TextEditingController();

  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginModel model = LoginModel();

  LoginRepositories repository = LoginRepositories();

  @action
  validaLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      model = await repository.fazerLogin(
          usuarioController.text, senhaController.text);

      if (model.email != null || model.nome != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Logado com sucesso")));
        Modular.to.pushNamed("/home");
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Erro ao logar")));
      }
    }
  }
}
