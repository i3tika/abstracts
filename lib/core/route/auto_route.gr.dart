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
import 'package:abstracts/feature/task/pages/format_page.dart' as _i5;
import 'package:abstracts/feature/testings_api/pages/json_phd.dart' as _i6;
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
    FormatRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FormatPage(),
      );
    },
    JsonPHDRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.JsonPHDPage(),
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
/// [_i5.FormatPage]
class FormatRoute extends _i7.PageRouteInfo<void> {
  const FormatRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FormatRoute.name,
          initialChildren: children,
        );

  static const String name = 'FormatRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.JsonPHDPage]
class JsonPHDRoute extends _i7.PageRouteInfo<void> {
  const JsonPHDRoute({List<_i7.PageRouteInfo>? children})
      : super(
          JsonPHDRoute.name,
          initialChildren: children,
        );

  static const String name = 'JsonPHDRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
