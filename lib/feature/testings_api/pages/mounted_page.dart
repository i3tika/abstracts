import 'package:flutter/material.dart';

class MountedPage extends StatelessWidget {
  const MountedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: OutlinedButton(
              onPressed: () async {
                await Future<void>.delayed(const Duration(seconds: 1));
                if (context.mounted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => MountedFrom(),
                    ),
                  );
                }
              },
              child: const Text('Delayed pop'),
            ),
          )
        ],
      ),
    );
  }
}

class MountedFrom extends StatelessWidget {
  const MountedFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text('data'))],
      ),
    );
  }
}
