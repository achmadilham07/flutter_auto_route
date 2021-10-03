// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/ui/first_page.dart' as _i1;
import '../views/ui/fourth_page.dart' as _i4;
import '../views/ui/second_page.dart' as _i2;
import '../views/ui/third_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstPage());
    },
    SecondRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SecondPage());
    },
    ThirdRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ThirdPage());
    },
    FourthRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FourthPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(FirstRoute.name, path: '/'),
        _i5.RouteConfig(SecondRoute.name, path: '/second'),
        _i5.RouteConfig(ThirdRoute.name, path: '/hihi'),
        _i5.RouteConfig(FourthRoute.name, path: '/third/fourth')
      ];
}

/// generated route for [_i1.FirstPage]
class FirstRoute extends _i5.PageRouteInfo<void> {
  const FirstRoute() : super(name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for [_i2.SecondPage]
class SecondRoute extends _i5.PageRouteInfo<void> {
  const SecondRoute() : super(name, path: '/second');

  static const String name = 'SecondRoute';
}

/// generated route for [_i3.ThirdPage]
class ThirdRoute extends _i5.PageRouteInfo<void> {
  const ThirdRoute() : super(name, path: '/hihi');

  static const String name = 'ThirdRoute';
}

/// generated route for [_i4.FourthPage]
class FourthRoute extends _i5.PageRouteInfo<void> {
  const FourthRoute() : super(name, path: '/third/fourth');

  static const String name = 'FourthRoute';
}
