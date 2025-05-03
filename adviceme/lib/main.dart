import 'package:adviceme/app/app.dart';
import 'package:adviceme/app/app_module.dart';
import 'package:adviceme/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Advice Me",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueCard),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
