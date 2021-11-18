import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'Login'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: store.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                          colors: [Colors.amberAccent, Colors.orange])),
                  child: const Center(
                    child: Text(
                      "GK\nAPP",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
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
                          if (store.senhaController.text.trim().isEmpty) {
                            return "Favor colocar uma login valida!";
                          }
                        },
                        decoration: const InputDecoration(
                            label: Text("Login"),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
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
                        textInputAction: TextInputAction.done,
                        controller: store.senhaController,
                        obscureText: true,
                        validator: (value) {
                          if (store.senhaController.text.trim().isEmpty) {
                            return "Favor colocar uma senha valida!";
                          }
                        },
                        decoration: const InputDecoration(
                            label: Text("Senha"),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () async {
                      await store.validaLogin(context);
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(fontSize: 20),
                    ),
                    height: 50,
                    minWidth: 150,
                    color: Colors.amber,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Modular.to.pushNamed('/cadastro/');
                    },
                    child: const Text(
                      "Ainda não tem cadastro? Clique aqui.",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
