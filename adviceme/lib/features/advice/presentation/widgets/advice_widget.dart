import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AdviceWidget extends StatelessWidget {
  final AdviceStore store;

  const AdviceWidget({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    store.fetchAdvice();

    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.amberAccent.shade100),
      child: Center(
        child: Observer(
          builder: (_) {
            if (store.isLoadingAdvice) {
              return const CircularProgressIndicator(
                color: Color.fromARGB(255, 86, 218, 225),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 86, 218, 225),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  store.adviceText,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
