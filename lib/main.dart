import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_revision_app/controllers/counter_provider.dart';
import 'package:provider_revision_app/utils/route_utils.dart';
import 'package:provider_revision_app/views/screens/counter_page.dart';
import 'package:provider_revision_app/views/screens/e_com_page.dart';
import 'package:provider_revision_app/views/screens/home_page.dart';

//  ChangeNotifierProvider    => 1 Provider
//  MultiProvider             => N Provider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.counterPage: (context) => const CounterPage(),
        MyRoutes.ecomPage: (context) => const EcomPage(),
      },
    );
  }
}
