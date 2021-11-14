import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter/material.dart';
import 'package:gkdeviceapplication/app/modules/bluetooth/page/bluetooth_page_module.dart';

class BluetoothPage extends StatelessWidget {
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [BluetoothPageModule()],
      ),
    );
  }
}
