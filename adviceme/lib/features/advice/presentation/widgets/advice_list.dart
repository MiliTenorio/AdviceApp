import 'package:adviceme/common/theme/app_colors.dart';
import 'package:adviceme/features/advice/presentation/widgets/favorite_button.dart';
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
        decoration: BoxDecoration(color: AppColors.yellowBackground),
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
                        color: AppColors.orangeBackground,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "You don't have favorite advice yet.",
                          style: TextStyle(color: AppColors.whiteText),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }

            return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: store.favorites.length,
              itemBuilder: (_, index) {
                final advice = store.favorites[index];
                return Card(
                  color: AppColors.blueCard,
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    trailing: FavoriteButton(
                      isFavorite: true,
                      onPressed: () => store.removeFavorite(advice),
                      activeColor: AppColors.redHeart,
                      inactiveColor: AppColors.purpleCard,
                    ),
                    title: Text(
                      advice,
                      style: TextStyle(color: AppColors.whiteText),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
