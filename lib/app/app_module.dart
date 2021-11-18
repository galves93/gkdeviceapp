import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/battery/battery_module.dart';
import 'package:gkdeviceapplication/app/modules/bluetooth/bluetooth_module.dart';
import 'package:gkdeviceapplication/app/modules/login/login_module.dart';

import 'modules/cadastro/cadastro_module.dart';
import 'modules/home/home_module.dart';
import 'modules/wifi/wifi_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    // ModuleRoute(Modular.initialRoute, module: SplashModule())
    ModuleRoute("/cadastro", module: CadastroModule()),
    ModuleRoute("/home", module: HomeModule()),
    ModuleRoute('/battery', module: BatteryModule()),
    ModuleRoute('/wifi', module: WifiModule()),
    ModuleRoute('/bluetooth', module: BluetoothModule()),
  ];
}
