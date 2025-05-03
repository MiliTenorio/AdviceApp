import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onPressed;
  final Color activeColor;
  final Color inactiveColor;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onPressed,
    this.activeColor = Colors.red,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder:
          (child, animation) => ScaleTransition(scale: animation, child: child),
      child: IconButton(
        key: ValueKey(isFavorite),
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? activeColor : inactiveColor,
        ),
        onPressed: onPressed,
        tooltip:
            isFavorite ? 'Remover dos favoritos' : 'Adicionar aos favoritos',
      ),
    );
  }
}
