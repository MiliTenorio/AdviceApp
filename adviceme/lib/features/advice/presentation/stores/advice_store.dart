import 'package:adviceme/features/advice/domain/usecases/get_favorites_usecase.dart';
import 'package:adviceme/features/advice/domain/usecases/save_favorites_usecase.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/advice.dart';
import '../../domain/usecases/get_advice.dart';

part 'advice_store.g.dart';

class AdviceStore = _AdviceStore with _$AdviceStore;

abstract class _AdviceStore with Store {
  final GetAdvice getAdviceUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;
  final SaveFavoritesUseCase saveFavoritesUseCase;

  _AdviceStore(
    this.getAdviceUseCase,
    this.getFavoritesUseCase,
    this.saveFavoritesUseCase,
  );

  @observable
  String adviceText = '';

  @observable
  bool isLoading = false;

  @observable
  ObservableList<String> favorites = ObservableList<String>();

  @computed
  bool get isFavorite => favorites.contains(adviceText);

  @action
  Future<void> fetchAdvice() async {
    isLoading = true;
    try {
      Advice advice = await getAdviceUseCase();
      adviceText = advice.text;
    } catch (_) {
      adviceText = 'Fail!';
    } finally {
      isLoading = false;
    }
  }

  /*@action
  void toggleFavorite() {
    if (favorites.contains(adviceText)) {
      favorites.remove(adviceText);
    } else {
      favorites.add(adviceText);
    }
  }*/

  @action
  Future<void> loadFavorites() async {
    final storedFavorites = await getFavoritesUseCase();
    favorites = ObservableList.of(storedFavorites);
  }

  @action
  void toggleFavorite() {
    if (favorites.contains(adviceText)) {
      favorites.remove(adviceText);
    } else {
      favorites.add(adviceText);
    }
    saveFavoritesUseCase(favorites.toList());
  }
}
