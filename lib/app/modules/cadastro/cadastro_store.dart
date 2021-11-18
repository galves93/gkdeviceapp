import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/model/cadastro_model.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/repositories/cadastro_repositories.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;

abstract class _CadastroStoreBase with Store {
  @observable
  TextEditingController nomeController = TextEditingController();

  @observable
  TextEditingController usuarioController = TextEditingController();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController senhaController = TextEditingController();

  @observable
  TextEditingController confirmaSenhaController = TextEditingController();

  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  CadastroRepositories repository = CadastroRepositories();

  CadastroModel model = CadastroModel();

  @action
  validateForm(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      model.nome = nomeController.text;
      model.usuario = usuarioController.text;
      model.email = emailController.text;
      model.senha = senhaController.text;
      await repository.novoCadastro(model).then((value) => {
            if (value.statusCode == 200)
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(value.message!),
                  backgroundColor: Colors.green,
                )),
                Future.delayed(Duration(milliseconds: 700))
                    .then((value) => Modular.to.navigate("/")),
              }
            else
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "Erro ao cadastrar no banco, verifique sua conexao" +
                          value.message!),
                  backgroundColor: Colors.red,
                )),
              }
          });
    }
  }
}
