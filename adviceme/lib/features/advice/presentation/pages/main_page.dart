import 'package:adviceme/common/theme/app_colors.dart';
import 'package:adviceme/features/advice/presentation/stores/advice_store.dart';
import 'package:adviceme/features/advice/presentation/widgets/advice_list.dart';
import 'package:adviceme/features/advice/presentation/widgets/advice_options_widget.dart';
import 'package:adviceme/features/advice/presentation/widgets/advice_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final AdviceStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<AdviceStore>();
    store.fetchAdvice();
    store.loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pinkBackground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lightbulb_outline, color: AppColors.purpleCard),
            const SizedBox(width: 8),
            const Text(
              "Advice Me!",
              style: TextStyle(
                color: AppColors.purpleCard,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AdviceWidget(store: store),
          AdviceOptionsWidget(store: store),
          AdviceList(store: store),
        ],
      ),
    );
  }
}
