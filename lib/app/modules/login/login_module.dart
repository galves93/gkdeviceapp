import 'package:gkdeviceapplication/app/modules/login/login_page.dart';
import 'package:gkdeviceapplication/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/cadastro_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}
