import 'package:abstracts/core/route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AThreePage extends StatelessWidget {
  const AThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text('WOOOOW'),
                Text('3page'),
                FilledButton(
                    onPressed: () {
                      context.router.push(AFourRoute());
                    },
                    child: Text('-> 4'))
              ],
            ),
          )
        ],
      ),
    );
  }
  }
