import 'package:gkdeviceapplication/app/modules/bluetooth/bluetooth_page.dart';
import 'package:gkdeviceapplication/app/modules/bluetooth/bluetooth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/bluetooth/page/bluetooth_page_module.dart';

class BluetoothModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BluetoothStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => BluetoothPage()),
    ChildRoute('/visualizar', child: (_, args) => BluetoothPageModule()),
  ];
}
