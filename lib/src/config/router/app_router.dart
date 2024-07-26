import 'package:app_fastfood/src/feature/presentapp/presentation%20/pages/present.dart';
import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: GetStartedRoute.page, initial: true),
        AutoRoute(page: ChoiceEntryRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
