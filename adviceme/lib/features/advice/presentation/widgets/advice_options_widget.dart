import 'package:adviceme/common/theme/app_colors.dart';
import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:adviceme/features/advice/presentation/widgets/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AdviceOptionsWidget extends StatelessWidget {
  final AdviceStore store;

  const AdviceOptionsWidget({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pinkBackground,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Observer(
            builder:
                (_) => FavoriteButton(
                  isFavorite: store.isFavorite,
                  onPressed: store.toggleFavorite,
                  activeColor: AppColors.redHeart,
                  inactiveColor: AppColors.purpleCard,
                ),
          ),
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: AppColors.purpleCard,
              size: 28,
            ),
            onPressed: store.fetchAdvice,
          ),
        ],
      ),
    );
  }
}
