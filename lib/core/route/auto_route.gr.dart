// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:abstracts/feature/task/pages/a_pag_three.dart' as _i2;
import 'package:abstracts/feature/task/pages/a_page_four.dart' as _i1;
import 'package:abstracts/feature/task/pages/a_page_two.dart' as _i3;
import 'package:abstracts/feature/task/pages/auto_route_page.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i5;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AFourRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AFourPage(),
      );
    },
    AThreeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AThreePage(),
      );
    },
    ATwoRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ATwoPage(),
      );
    },
    AutoOneRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AutoOnePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AFourPage]
class AFourRoute extends _i5.PageRouteInfo<void> {
  const AFourRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AFourRoute.name,
          initialChildren: children,
        );

  static const String name = 'AFourRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AThreePage]
class AThreeRoute extends _i5.PageRouteInfo<void> {
  const AThreeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AThreeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ATwoPage]
class ATwoRoute extends _i5.PageRouteInfo<void> {
  const ATwoRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ATwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ATwoRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AutoOnePage]
class AutoOneRoute extends _i5.PageRouteInfo<void> {
  const AutoOneRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AutoOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutoOneRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
