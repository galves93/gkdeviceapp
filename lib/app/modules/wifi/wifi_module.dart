import 'package:gkdeviceapplication/app/modules/wifi/wifi_page.dart';
import 'package:gkdeviceapplication/app/modules/wifi/wifi_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WifiModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => WifiStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => WifiPage()),
  ];
}
