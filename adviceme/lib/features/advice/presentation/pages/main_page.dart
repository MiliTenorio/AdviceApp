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
      appBar: AppBar(title: const Text("Advice Me!"), centerTitle: true),
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
