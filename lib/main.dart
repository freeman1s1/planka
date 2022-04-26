import 'package:flutter/material.dart';
import 'package:planka_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRoutes.routes.routeInformationParser,
      routerDelegate: AppRoutes.routes.routerDelegate,
    );
  }
}
