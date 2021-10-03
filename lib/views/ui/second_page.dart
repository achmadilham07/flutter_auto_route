import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("SecondPage"),
          IconButton(
            icon: const Icon(Icons.pin_drop),
            onPressed: () => appRouter.push(const ThirdRoute()),
          ),
        ],
      ),
    );
  }
}
