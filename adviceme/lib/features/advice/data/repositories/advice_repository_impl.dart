import 'package:adviceme/features/advice/data/datasources/advice_local_datasource.dart';
import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';

import '../../domain/entities/advice.dart';
import '../datasources/advice_remote_data_source.dart';

class AdviceRepositoryImpl implements AdviceRepository {
  final AdviceRemoteDataSource remoteDataSource;
  final IAdviceLocalDatasource localDatasource;

  AdviceRepositoryImpl(this.remoteDataSource, this.localDatasource);

  @override
  Future<Advice> getAdvice() async {
    return await remoteDataSource.getAdviceFromApi();
  }

  @override
  Future<List<String>> getFavorites() {
    return localDatasource.getFavorites();
  }

  @override
  Future<void> saveFavorites(List<String> favorites) {
    return localDatasource.saveFavorites(favorites);
  }
}
