import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';

class GetFavoritesUseCase {
  final AdviceRepository repository;

  GetFavoritesUseCase(this.repository);

  Future<List<String>> call() => repository.getFavorites();
}
