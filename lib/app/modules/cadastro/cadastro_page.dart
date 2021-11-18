import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/cadastro_store.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key? key, this.title = 'Cadastro Novo Usuario'})
      : super(key: key);
  @override
  CadastroPageState createState() => CadastroPageState();
}

class CadastroPageState extends State<CadastroPage> {
  final CadastroStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: store.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: store.nomeController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Esse campo nao pode ficar vazio!";
                        }
                      },
                      decoration: const InputDecoration(
                          label: Text("Nome"),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: store.usuarioController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Esse campo nao pode ficar vazio!";
                        }
                      },
                      decoration: const InputDecoration(
                          label: Text("Usuário"),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: store.emailController,
                      validator: (value) {
                        if (!store.emailController.text.contains("@")) {
                          return "Favor verificar email";
                        }
                        if (value!.isEmpty) {
                          return "Esse campo nao pode ficar vazio!";
                        }
                      },
                      decoration: const InputDecoration(
                          label: Text("E-mail"),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: store.senhaController,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Esse campo nao pode ficar vazio!";
                        }
                      },
                      decoration: const InputDecoration(
                          label: Text("Senha"),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: store.confirmaSenhaController,
                      validator: (value) {
                        if (store.confirmaSenhaController.text !=
                            store.senhaController.text) {
                          return "Senhas não conferem";
                        }
                        if (value!.isEmpty) {
                          return "Esse campo nao pode ficar vazio!";
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          label: Text("Confirmar Senha"),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    store.validateForm(context);
                  },
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(fontSize: 20),
                  ),
                  height: 50,
                  minWidth: 150,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
