import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/advice_store.dart';

class AdviceList extends StatelessWidget {
  final AdviceStore store;

  const AdviceList({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.pinkAccent.shade100),
        child: Observer(
          builder: (_) {
            if (store.isLoadingFavorites) {
              return const Center(child: CircularProgressIndicator());
            }

            if (store.favorites.isEmpty) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amberAccent.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "You don't have favorite advice yet.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }

            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: store.favorites.length,
                itemBuilder: (_, index) {
                  final advice = store.favorites[index];
                  return Card(
                    color: const Color.fromARGB(255, 86, 218, 225),
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: IconButton(
                        icon: Icon(Icons.favorite, color: Colors.redAccent),
                        onPressed: () => store.removeFavorite(advice),
                      ),
                      title: Text(
                        advice,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 238, 249, 250),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
