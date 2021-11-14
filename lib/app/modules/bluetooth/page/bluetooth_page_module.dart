import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothPageModule extends StatefulWidget {
  const BluetoothPageModule({Key? key}) : super(key: key);

  @override
  _BluetoothPageModuleState createState() => _BluetoothPageModuleState();
}

class _BluetoothPageModuleState extends State<BluetoothPageModule> {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  List<BluetoothDevice> devices = [];

  Future scanAllDevices() async {
    var scanDevices = flutterBlue.scanResults.listen((listScanResult) {
      for (var node in listScanResult) {
        devices.add(node.device);
      }
    });
    scanDevices.cancel();
    print(devices.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
