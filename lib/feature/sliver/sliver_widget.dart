import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MySliver extends StatelessWidget {
  MySliver({super.key});
  @override
  Widget build(BuildContext context) {
    ExpandableController emissionController = ExpandableController(
      initialExpanded: true,
    );
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.amber,
              child: GestureDetector(
                onTap: () => emissionController.expanded = false,
                child: ExpandablePanel(
                    controller: emissionController,
                    collapsed: const SizedBox.shrink(),
                    expanded: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SliverList(
                            delegate: SliverChildBuilderDelegate(childCount: 5,
                                (context, index) {
                          return Text('data');
                        }))
                      ],
                    )),
              ),
            ),
          ),
        ],
      )),
    );
  }
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
                 ListView.builder(
            
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return const Text('List One');
            },
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
