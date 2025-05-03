import 'package:adviceme/common/theme/app_colors.dart';
import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AdviceWidget extends StatelessWidget {
  final AdviceStore store;

  const AdviceWidget({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.yellowBackground,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Center(
        child: Observer(
          builder: (_) {
            if (store.isLoadingAdvice) {
              return const CircularProgressIndicator(color: AppColors.blueCard);
            }
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.blueCard,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackBoxShadow,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                store.adviceText,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.whiteText,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }
}
