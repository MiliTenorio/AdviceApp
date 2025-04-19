import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    key: navigatorKey,
    routerDelegate: Modular.routerDelegate,
    routeInformationParser: Modular.routeInformationParser,
  );
}
