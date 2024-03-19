import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class NeoPop extends StatelessWidget {
  const NeoPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NeoPopButton(
              color: Colors.white,
              onTapUp: () => HapticFeedback.vibrate(),
              onTapDown: () => HapticFeedback.vibrate(),
              parentColor: Colors.transparent,
              buttonPosition: Position.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Pay Now"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
