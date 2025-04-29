import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AdviceWidget extends StatelessWidget {
  final AdviceStore store;

  const AdviceWidget({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    store.fetchAdvice();

    return Center(
      child: Observer(
        builder: (_) {
          if (store.isLoadingAdvice) {
            return const CircularProgressIndicator();
          }
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              store.adviceText,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
