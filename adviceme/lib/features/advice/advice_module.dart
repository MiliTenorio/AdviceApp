import 'package:adviceme/features/advice/data/datasources/advice_remote_data_source.dart';
import 'package:adviceme/features/advice/data/repositories/advice_repository_impl.dart';
import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';
import 'package:adviceme/features/advice/domain/usecases/get_advice.dart';
import 'package:adviceme/features/advice/presentation/pages/main_page.dart';
import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdviceModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<AdviceRemoteDataSource>(AdviceRemoteDataSource.new);
    i.add<AdviceRepository>(() => AdviceRepositoryImpl(i()));
    i.add<GetAdvice>(() => GetAdvice(i()));
    i.add<AdviceStore>(() => AdviceStore(i()));
  }

  /*@override
  List<Module> get imports => <Module>[CoreModule()];*/

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const MainPage());
  }
}
