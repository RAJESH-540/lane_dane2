import 'package:flutter/material.dart';
import 'package:lane_dena/routes/route.gr.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );

  }
}

