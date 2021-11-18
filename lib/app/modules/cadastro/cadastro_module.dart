import 'package:gkdeviceapplication/app/modules/cadastro/cadastro_page.dart';
import 'package:gkdeviceapplication/app/modules/cadastro/cadastro_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CadastroPage()),
  ];
}
