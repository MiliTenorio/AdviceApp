import 'package:adviceme/features/advice/domain/repositories/advice_repositories.dart';

class SaveFavoritesUseCase {
  final AdviceRepository repository;

  SaveFavoritesUseCase(this.repository);

  Future<void> call(List<String> favorites) =>
      repository.saveFavorites(favorites);
}
