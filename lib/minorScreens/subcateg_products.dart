import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class SubCategProducts extends StatelessWidget {
  final String maincategName;
  final String subcategName;
  const SubCategProducts(
      {Key? key, required this.subcategName, required this.maincategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const AppbarBackButton(),
          title: AppbarTitle(title: subcategName)),
      body: Center(child: Text(maincategName)),
    );
  }
}
