import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/minorScreens/search.dart';

import '../widgets/fakesearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: FakeSearch(),
            bottom: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow,
                indicatorWeight: 5,
                tabs: [
                  RepeatedTab(label: 'Men'),
                  RepeatedTab(label: 'Women'),
                  RepeatedTab(label: 'Shoes'),
                  RepeatedTab(label: 'Bags'),
                  RepeatedTab(label: 'Electronics'),
                  RepeatedTab(label: 'Accessories'),
                  RepeatedTab(label: 'Home & Garden'),
                  RepeatedTab(label: 'Kids'),
                  RepeatedTab(label: 'Beauty'),
                ]),
          ),
          body: const TabBarView(children: [
            Center(child: Text('men screen')),
            Center(child: Text('women screen')),
            Center(child: Text('shoes screen')),
            Center(child: Text('Bags screen')),
            Center(child: Text('Electroics screen')),
            Center(child: Text('Accessories screen')),
            Center(child: Text('Home & Garden screen')),
            Center(child: Text('Kids screen')),
            Center(child: Text('Beauty screen')),
          ]),
        ));
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
