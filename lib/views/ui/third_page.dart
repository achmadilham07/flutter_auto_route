import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';

class ThirdPage extends StatelessWidget {
  final String? args;
  final String? bookId;

  const ThirdPage({
    Key? key,
    this.args,
    @PathParam('id') this.bookId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("ThirdPage"),
          Text(args ?? "empty 3"),
          Text(bookId ?? "empty 54"),
          IconButton(
            icon: const Icon(Icons.kayaking),
            onPressed: () => appRouter.push(
              FourthRoute(
                query1: "belajarubic",
                // query2: "passwordloo",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
