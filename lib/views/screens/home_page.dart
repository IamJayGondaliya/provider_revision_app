import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider_revision_app/utils/route_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Platform.isAndroid
            ? const Text("Home Page")
            : const Text("iOS app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.counterPage);
              },
              child: const Text("Counter Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.ecomPage);
              },
              child: const Text("E commerce Page"),
            ),
          ],
        ),
      ),
    );
  }
}
