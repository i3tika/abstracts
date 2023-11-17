import 'package:flutter/material.dart';

class MySliver extends StatelessWidget {
  MySliver({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(slivers: [
            SliverAppBar(
                pinned: true,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Available seats'),
                  background: Image.network(
                    'https://r-cf.bstatic.com/images/hotel/max1024x768/116/116281457.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                )),
          ]),
        ),
      ));
}

class MyAppSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                forceElevated: true,
                primary: false,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('SliverList Widget'),
                  centerTitle: true,
                  background: Image.network(
                    'https://cdn.europosters.eu/image/hp/50758.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                )),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  10,
                  (index) => CustomWidget(index),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget(this._index) {
    debugPrint('initialize: $_index');
  }

  final int _index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: (_index % 2 != 0) ? Colors.white : Colors.grey,
      child:
          Center(child: Text('index: $_index', style: TextStyle(fontSize: 40))),
    );
  }
}
