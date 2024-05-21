import 'package:abstracts/core/di/di.dart';
import 'package:abstracts/core/route/auto_route.dart';
import 'package:abstracts/core/route/auto_route.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AutoOnePage extends StatelessWidget {
  const AutoOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text('1pagыыe'),
                FilledButton(
                    onPressed: () {
                      getIt<AppRouter>().push(const ATwoRoute());
                    },
                    child: Text('-> 2'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
