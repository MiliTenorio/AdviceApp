import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';

import '../../domain/entities/advice.dart';
import '../datasources/advice_remote_data_source.dart';

class AdviceRepositoryImpl implements AdviceRepository {
  final AdviceRemoteDataSource remoteDataSource;

  AdviceRepositoryImpl(this.remoteDataSource);

  @override
  Future<Advice> getAdvice() async {
    return await remoteDataSource.getAdviceFromApi();
  }
}
