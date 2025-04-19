import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';

import '../entities/advice.dart';

class GetAdvice {
  final AdviceRepository repository;

  GetAdvice(this.repository);

  Future<Advice> call() async {
    return await repository.getAdvice();
  }
}
