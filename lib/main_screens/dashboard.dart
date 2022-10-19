import 'package:flutter/material.dart';
import 'package:multi_store/dashboard_components/edit_business.dart';
import 'package:multi_store/dashboard_components/my_store.dart';
import 'package:multi_store/dashboard_components/supplier_balance.dart';
import 'package:multi_store/dashboard_components/supplier_orders.dart';
import 'package:multi_store/dashboard_components/supplier_statics.dart';
import 'package:multi_store/widgets/appbar_widgets.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart
];

List<Widget> pages = const [
  MyStore(),
  SupplierOrders(),
  EditBusiness(),
  BalanceScreen(),
  Statics_Screen()
];

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/welcome_screen');
                },
                icon: const Icon(Icons.logout),
                color: Colors.black),
          ],
          title: const AppbarTitle(
            title: 'DashBoard',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: GridView.count(
            crossAxisSpacing: 50,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages[index]));
                },
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.purpleAccent,
                  color: Colors.blueGrey.withOpacity(0.7),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          icons[index],
                          color: Colors.yellowAccent,
                          size: 50,
                        ),
                        Text(label[index].toUpperCase(),
                            style: const TextStyle(
                                fontSize: 24,
                                letterSpacing: 2,
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Acme'))
                      ]),
                ),
              );
            }),
          ),
        ));
  }
}
