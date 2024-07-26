import 'package:app_fastfood/src/config/router/app_router.dart';
import 'package:app_fastfood/src/config/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(Main());
}

class Main extends StatelessWidget {
  final _appRouter = AppRouter();
  Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(
        deepLinkBuilder: (deepLink) => const DeepLink([
          PageRouteInfo(GetStartedRoute.name),
        ]),
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
