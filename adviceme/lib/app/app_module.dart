import 'package:adviceme/features/advice/advice_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  List<Module> get imports => <Module>[];

  @override
  void routes(RouteManager r) {
    r.module(Modular.initialRoute, module: AdviceModule());
  }
}
