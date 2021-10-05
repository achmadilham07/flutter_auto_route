import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/views/ui/first_page.dart';
import 'package:flutter_auto_route/views/ui/fourth_page.dart';
import 'package:flutter_auto_route/views/ui/second_page.dart';
import 'package:flutter_auto_route/views/ui/third_page.dart';

import 'router.gr.dart';

///
/// flutter packages pub run build_runner build --delete-conflicting-outputs
///

final appRouter = AppRouter();

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: SecondPage, path: '/second'),
    AutoRoute(page: ThirdPage, path: '/third/:id'),
    AutoRoute(page: FourthPage, path: '/fourth'),
  ],
)
class $AppRouter {}
