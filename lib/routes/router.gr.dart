// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../views/ui/first_page.dart' as _i1;
import '../views/ui/fourth_page.dart' as _i4;
import '../views/ui/second_page.dart' as _i2;
import '../views/ui/third_page.dart' as _i3;
import '../views/ui/wrong_page.dart' as _i5;
import 'route_guard.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstPage());
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SecondPage(key: args.key, args: args.args));
    },
    ThirdRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ThirdRouteArgs>(
          orElse: () => ThirdRouteArgs(bookId: pathParams.optString('id')));
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ThirdPage(
              key: args.key, args: args.args, bookId: args.bookId));
    },
    FourthRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<FourthRouteArgs>(
          orElse: () => FourthRouteArgs(
              query1: queryParams.optString('username'),
              query2: queryParams.optString('password')));
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.FourthPage(
              key: args.key, query1: args.query1, query2: args.query2));
    },
    WrongRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WrongPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(FirstRoute.name, path: '/'),
        _i6.RouteConfig(SecondRoute.name, path: '/second'),
        _i6.RouteConfig(ThirdRoute.name,
            path: '/third/:id', guards: [authGuard]),
        _i6.RouteConfig(FourthRoute.name, path: '/fourth'),
        _i6.RouteConfig(WrongRoute.name, path: '/wrong'),
        _i6.RouteConfig('*#redirect',
            path: '*', redirectTo: '/wrong', fullMatch: true)
      ];
}

/// generated route for [_i1.FirstPage]
class FirstRoute extends _i6.PageRouteInfo<void> {
  const FirstRoute() : super(name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for [_i2.SecondPage]
class SecondRoute extends _i6.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({_i7.Key? key, required String args})
      : super(name,
            path: '/second', args: SecondRouteArgs(key: key, args: args));

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({this.key, required this.args});

  final _i7.Key? key;

  final String args;
}

/// generated route for [_i3.ThirdPage]
class ThirdRoute extends _i6.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({_i7.Key? key, String? args, String? bookId})
      : super(name,
            path: '/third/:id',
            args: ThirdRouteArgs(key: key, args: args, bookId: bookId),
            rawPathParams: {'id': bookId});

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({this.key, this.args, this.bookId});

  final _i7.Key? key;

  final String? args;

  final String? bookId;
}

/// generated route for [_i4.FourthPage]
class FourthRoute extends _i6.PageRouteInfo<FourthRouteArgs> {
  FourthRoute({_i7.Key? key, String? query1, String? query2})
      : super(name,
            path: '/fourth',
            args: FourthRouteArgs(key: key, query1: query1, query2: query2),
            rawQueryParams: {'username': query1, 'password': query2});

  static const String name = 'FourthRoute';
}

class FourthRouteArgs {
  const FourthRouteArgs({this.key, this.query1, this.query2});

  final _i7.Key? key;

  final String? query1;

  final String? query2;
}

/// generated route for [_i5.WrongPage]
class WrongRoute extends _i6.PageRouteInfo<void> {
  const WrongRoute() : super(name, path: '/wrong');

  static const String name = 'WrongRoute';
}
