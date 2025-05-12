import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/carpool_by_resort/presentation/carpool_posts.dart';
import 'package:powder_pool/home/presentation/home.dart';
import 'package:powder_pool/login/presentation/app_shell.dart';
import 'package:powder_pool/login/presentation/login_page.dart';
import 'package:powder_pool/login/presentation/sign_up_page.dart';
import 'package:powder_pool/resorts/presentation/resorts_list.dart';
import 'package:powder_pool/router/domain/routes.dart';
import 'package:powder_pool/router/routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation:
      '/', // Set initialLocation to '/login' to show login page by default if not authenticated
  routes: [
        GoRoute(
      name: Routes.home.name,
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      name: Routes.login.name,
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      name: Routes.signUp.name,
      path: '/signUp',
      builder: (context, state) => SignUpPage(),
    ),
    GoRoute(
      name: Routes.resorts.name,
      path: '/resorts',
      builder: (context, state) => ResortsPage(),
    ),
    GoRoute(
      name: Routes.carpoolByResort.name,
      path: '/carpoolByResort',
      builder: (context, state) => CarpoolsByResortPage(),
    ),
    // ShellRoute(
    //   navigatorKey: _shellNavigatorKey,
    //   builder:
    //       (context, state, child) => AuthRoute(child: AppShell(child: child)),
    //   routes: [
    //     GoRoute(
    //       name: Routes.home.name,
    //       path: '/',
    //       parentNavigatorKey: _shellNavigatorKey,
    //       builder: (context, state) => HomePage(),
    //     ),
    //     // GoRoute(
    //     //   name: rtNames.consumables,
    //     //   path: '/consumables',
    //     //   parentNavigatorKey: _shellNavigatorKey,
    //     //   builder: (context, state) {
    //     //     return ConsumablesPage();
    //     //   },
    //     // ),
    //   ],
    // ),
  ],
);
