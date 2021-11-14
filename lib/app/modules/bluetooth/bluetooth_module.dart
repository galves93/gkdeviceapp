import 'package:gkdeviceapplication/app//modules/bluetooth/bluetooth_Page.dart';
import 'package:gkdeviceapplication/app//modules/bluetooth/bluetooth_Page.dart';
import 'package:gkdeviceapplication/app//modules/bluetooth/bluetooth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BluetoothModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BluetoothStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => BluetoothPage()),
    ChildRoute('/', child: (_, args) => BluetoothPage()),
  ];
}
