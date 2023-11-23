import 'package:abstracts/feature/task/pages/a_pag_three.dart';
import 'package:abstracts/feature/task/pages/a_page_two.dart';
import 'package:abstracts/feature/task/pages/auto_route_page.dart';
import 'package:auto_route/auto_route.dart';
import 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AutoOneRoute.page,
          path: '/homePage',
          initial: true,
        ),
        AutoRoute(page: ATwoRoute.page, path: '/twoPage'),
        AutoRoute(page: AThreeRoute.page, path: '/threePage'),
      ];
}
