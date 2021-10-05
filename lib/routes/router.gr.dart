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
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SecondPage(key: args.key, args: args.args));
    },
    ThirdRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ThirdRouteArgs>(
          orElse: () => ThirdRouteArgs(bookId: pathParams.optString('id')));
      return _i5.MaterialPageX<dynamic>(
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
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.FourthPage(
              key: args.key, query1: args.query1, query2: args.query2));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(FirstRoute.name, path: '/'),
        _i5.RouteConfig(SecondRoute.name, path: '/second'),
        _i5.RouteConfig(ThirdRoute.name, path: '/third/:id'),
        _i5.RouteConfig(FourthRoute.name, path: '/fourth')
      ];
}

/// generated route for [_i1.FirstPage]
class FirstRoute extends _i5.PageRouteInfo<void> {
  const FirstRoute() : super(name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for [_i2.SecondPage]
class SecondRoute extends _i5.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({_i6.Key? key, required String args})
      : super(name,
            path: '/second', args: SecondRouteArgs(key: key, args: args));

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({this.key, required this.args});

  final _i6.Key? key;

  final String args;
}

/// generated route for [_i3.ThirdPage]
class ThirdRoute extends _i5.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({_i6.Key? key, String? args, String? bookId})
      : super(name,
            path: '/third/:id',
            args: ThirdRouteArgs(key: key, args: args, bookId: bookId),
            rawPathParams: {'id': bookId});

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({this.key, this.args, this.bookId});

  final _i6.Key? key;

  final String? args;

  final String? bookId;
}

/// generated route for [_i4.FourthPage]
class FourthRoute extends _i5.PageRouteInfo<FourthRouteArgs> {
  FourthRoute({_i6.Key? key, String? query1, String? query2})
      : super(name,
            path: '/fourth',
            args: FourthRouteArgs(key: key, query1: query1, query2: query2),
            rawQueryParams: {'username': query1, 'password': query2});

  static const String name = 'FourthRoute';
}

class FourthRouteArgs {
  const FourthRouteArgs({this.key, this.query1, this.query2});

  final _i6.Key? key;

  final String? query1;

  final String? query2;
}
