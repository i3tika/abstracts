import 'package:abstracts/core/route/auto_route.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AFourPage extends StatelessWidget {
  const AFourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text('4page'),
                FilledButton(
                    onPressed: () {
                      // context.router.push(JsonPHDRoute());
                    },
                    child: Text('-> 1'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
