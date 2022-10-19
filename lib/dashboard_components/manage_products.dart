import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class ManageProducts extends StatelessWidget {
  const ManageProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppbarTitle(title: 'Manage Products'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
