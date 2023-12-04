import 'package:abstracts/core/route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ATwoPage extends StatelessWidget {
  const ATwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text('2page'),
                FilledButton(
                    onPressed: () {
                      context.router.push(AThreeRoute());
                    },
                    child: Text('-> 3'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
