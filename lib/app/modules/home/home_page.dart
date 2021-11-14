import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GK Informações Celular'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.purple,
                    height: 50,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Modular.to.pushNamed('/wifi/');
                      },
                      child: const Text("Wifi Info"),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Modular.to.pushNamed('/battery/');
                      },
                      child: const Text("Batery Info"),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Modular.to.pushNamed('/bluetooth/');
                      },
                      child: const Text("Bluetooth Info"),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
