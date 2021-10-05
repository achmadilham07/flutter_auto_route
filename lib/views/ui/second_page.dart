import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';

class SecondPage extends StatelessWidget {
  final String args;
  const SecondPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("SecondPage"),
          Text(args),
          IconButton(
            icon: const Icon(Icons.pin_drop),
            onPressed: () => appRouter
                .push(ThirdRoute(args: "Args to third", bookId: "123")),
          ),
        ],
      ),
    );
  }
}
