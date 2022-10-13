import 'package:flutter/material.dart';
import 'package:multi_store/widgets/appbar_widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppbarTitle(title: 'Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Your Cart Is Empty',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 50,
          ),
          Material(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(25),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.6,
              onPressed: () {},
              child: const Text(
                'continue shopping',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
