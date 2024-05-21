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
import 'package:abstracts/feature/test_shared_prefs/pages/shared_prefs.dart'
    as _i6;
import 'package:abstracts/feature/testings_api/pages/test_api_pagination.dart'
    as _i5;
import 'package:auto_route/auto_route.dart' as _i7;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AFourRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AFourPage(),
      );
    },
    AThreeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AThreePage(),
      );
    },
    ATwoRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ATwoPage(),
      );
    },
    AutoOneRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AutoOnePage(),
      );
    },
    PaginationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PaginationPage(),
      );
    },
    TestSharedPrefs.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TestSharedPrefs(),
      );
    },
  };
}

/// generated route for
/// [_i1.AFourPage]
class AFourRoute extends _i7.PageRouteInfo<void> {
  const AFourRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AFourRoute.name,
          initialChildren: children,
        );

  static const String name = 'AFourRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AThreePage]
class AThreeRoute extends _i7.PageRouteInfo<void> {
  const AThreeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AThreeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ATwoPage]
class ATwoRoute extends _i7.PageRouteInfo<void> {
  const ATwoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ATwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ATwoRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AutoOnePage]
class AutoOneRoute extends _i7.PageRouteInfo<void> {
  const AutoOneRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AutoOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutoOneRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PaginationPage]
class PaginationRoute extends _i7.PageRouteInfo<void> {
  const PaginationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PaginationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaginationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TestSharedPrefs]
class TestSharedPrefs extends _i7.PageRouteInfo<void> {
  const TestSharedPrefs({List<_i7.PageRouteInfo>? children})
      : super(
          TestSharedPrefs.name,
          initialChildren: children,
        );

  static const String name = 'TestSharedPrefs';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
