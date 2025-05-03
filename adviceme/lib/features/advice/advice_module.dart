import 'package:adviceme/features/advice/data/datasources/advice_local_datasource.dart';
import 'package:adviceme/features/advice/data/datasources/advice_remote_data_source.dart';
import 'package:adviceme/features/advice/data/repositories/advice_repository_impl.dart';
import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';
import 'package:adviceme/features/advice/domain/usecases/get_advice.dart';
import 'package:adviceme/features/advice/domain/usecases/get_favorites_usecase.dart';
import 'package:adviceme/features/advice/domain/usecases/save_favorites_usecase.dart';
import 'package:adviceme/features/advice/presentation/pages/main_page.dart';
import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:adviceme/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdviceModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<AdviceRemoteDataSource>(AdviceRemoteDataSource.new);
    i.addSingleton<IAdviceLocalDatasource>(AdviceLocalDatasource.new);

    i.addSingleton<AdviceRepository>(
      () => AdviceRepositoryImpl(
        i<AdviceRemoteDataSource>(),
        i<IAdviceLocalDatasource>(),
      ),
    );
    i.addSingleton<GetFavoritesUseCase>(GetFavoritesUseCase.new);
    i.addSingleton<SaveFavoritesUseCase>(SaveFavoritesUseCase.new);
    i.addSingleton<GetAdvice>(GetAdvice.new);
    i.addSingleton(
      () => AdviceStore(
        i<GetAdvice>(),
        i<GetFavoritesUseCase>(),
        i<SaveFavoritesUseCase>(),
      ),
    );
  }

  /*@override
  List<Module> get imports => <Module>[CoreModule()];*/

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const SplashScreen());
    r.child("/home", child: (_) => const MainPage());
  }
}
