// ignore_for_file: avoid_print

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/cart_model.dart';
import 'package:flutter_application_2/routes/application.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<MyApp> {
  AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      onGenerateRoute: Application.router.generator,
    );
//    print("initial route = ${app.initialRoute}");
    return app;
  }
}
