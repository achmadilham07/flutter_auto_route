import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("FifthPage"),
          IconButton(
            icon: const Icon(Icons.map),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}