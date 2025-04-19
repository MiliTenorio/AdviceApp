import 'package:flutter/material.dart';

class AdviceOptionsWidget extends StatelessWidget {
  final VoidCallback onRefresh;

  const AdviceOptionsWidget({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {
                //TODO: store.addToFavorites()
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Favorite not implemented yet!"),
                  ),
                );
              },
              icon: const Icon(Icons.favorite_border),
              label: const Text("Favorite"),
            ),
            TextButton.icon(
              onPressed: onRefresh,
              icon: const Icon(Icons.replay),
              label: const Text("New Advice"),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
