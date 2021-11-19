import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/routes/route_guard.dart';
import 'package:flutter_auto_route/views/ui/first_page.dart';
import 'package:flutter_auto_route/views/ui/fourth_page.dart';
import 'package:flutter_auto_route/views/ui/second_page.dart';
import 'package:flutter_auto_route/views/ui/third_page.dart';
import 'package:flutter_auto_route/views/ui/wrong_page.dart';

import 'router.gr.dart';

///
/// flutter packages pub run build_runner build --delete-conflicting-outputs
///

final appRouter = AppRouter(authGuard: AuthGuard());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: SecondPage, path: '/second'),
    AutoRoute(page: ThirdPage, path: '/third/:id', guards: [AuthGuard]),
    AutoRoute(page: FourthPage, path: '/fourth'),
    AutoRoute(page: WrongPage, path: '/wrong'),
    RedirectRoute(path: '*', redirectTo: '/wrong')
  ],
)
class $AppRouter {}
