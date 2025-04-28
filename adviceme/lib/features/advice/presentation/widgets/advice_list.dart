import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/advice_store.dart';

class AdviceList extends StatelessWidget {
  final AdviceStore store;

  const AdviceList({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) {
          if (store.favorites.isEmpty) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("You don't have favorite advice yet."),
            );
          }

          return Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: store.favorites.length,
              itemBuilder: (_, index) {
                final advice = store.favorites[index];
                return Card(
                  color: Colors.white,
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: const Icon(Icons.favorite, color: Colors.red),
                    title: Text(advice),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
