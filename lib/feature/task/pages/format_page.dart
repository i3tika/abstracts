import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class FormatPage extends StatelessWidget {
  const FormatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('MaterialPage'),
          ),
          Icon(Icons.power_settings_new_sharp),
          FilledButton(onPressed: (){
            print('object');
          }, child: Icon(Icons.place),)
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('formatPage'),
    );
  }
}
