import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: LoginPageWidget.routePath,
      routes: [
        GoRoute(
          path: LoginPageWidget.routePath,
          name: LoginPageWidget.routeName,
          builder: (context, state) => const LoginPageWidget(),
        ),
        GoRoute(
          path: HomePageWidget.routePath,
          name: HomePageWidget.routeName,
          builder: (context, state) => const HomePageWidget(),
        ),
        GoRoute(
          path: DashboardPageWidget.routePath,
          name: DashboardPageWidget.routeName,
          builder: (context, state) => const DashboardPageWidget(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Music Pro Eventi',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
      routerConfig: router,
    );
  }
}
