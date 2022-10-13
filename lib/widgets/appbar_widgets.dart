import 'package:flutter/material.dart';

class AppbarBackButton extends StatelessWidget {
  const AppbarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios_new),
      color: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Acme',
            fontSize: 28,
            letterSpacing: 1.5),
      ),
    );
  }
}
