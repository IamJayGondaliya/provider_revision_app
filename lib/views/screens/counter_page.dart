import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_revision_app/controllers/counter_provider.dart';

//      Consumer widget           => 1 widget multi change
//      Provider.of constructor   => Changes at different location

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Tap to increase counter"),
            Text(
              "${Provider.of<CounterProvider>(context, listen: true).counter}",
              style: const TextStyle(
                fontSize: 36,
              ),
            ),
            // Consumer<CounterProvider>(
            //   builder: (context, provider, child) => Text(
            //     "${provider.counter}",
            //     style: const TextStyle(
            //       fontSize: 36,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton:
          Consumer<CounterProvider>(builder: (context, pro, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                pro.increment();
                // Provider.of<CounterProvider>(context, listen: false).increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                pro.decrement();
                // Provider.of<CounterProvider>(context, listen: false).decrement();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        );
      }),
    );
  }
}
