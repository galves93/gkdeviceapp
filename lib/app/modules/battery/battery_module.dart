import 'package:flutter_modular/flutter_modular.dart';

import 'battery_page.dart';
import 'battery_store.dart';

class BatteryModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BatteryStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const BatteryPage()),
  ];
}
