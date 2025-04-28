import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AdviceOptionsWidget extends StatelessWidget {
  final AdviceStore store;

  const AdviceOptionsWidget({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Observer(
              builder:
                  (_) => IconButton(
                    icon: Icon(
                      store.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: store.isFavorite ? Colors.red : null,
                    ),
                    onPressed: store.toggleFavorite,
                  ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: store.fetchAdvice,
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
