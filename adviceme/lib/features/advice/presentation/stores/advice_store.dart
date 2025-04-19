import 'package:mobx/mobx.dart';

import '../../domain/entities/advice.dart';
import '../../domain/usecases/get_advice.dart';

part 'advice_store.g.dart';

class AdviceStore = _AdviceStore with _$AdviceStore;

abstract class _AdviceStore with Store {
  final GetAdvice getAdviceUseCase;

  _AdviceStore(this.getAdviceUseCase);

  @observable
  String adviceText = '';

  @observable
  bool isLoading = false;

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
}
