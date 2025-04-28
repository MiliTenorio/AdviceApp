import '../entities/advice.dart';

abstract class AdviceRepository {
  Future<Advice> getAdvice();
  Future<List<String>> getFavorites();
  Future<void> saveFavorites(List<String> favorites);
}
