import 'package:flutter/material.dart';
import 'package:multi_store/widgets/yellowButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/inapp/bgimage.jpg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'welcome'.toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 120,
                width: 200,
                child: Image(image: AssetImage('asset/images/inapp/logo.png')),
              ),
              Text(
                'shop'.toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(162, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: const Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Suppliers Only',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 26),
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(162, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                  image: AssetImage(
                                      'asset/images/inapp/logo.png')),
                              YellowButton(
                                  label: 'Log In',
                                  onPressed: () {},
                                  width: 0.25),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: YellowButton(
                                    label: 'Sign Up',
                                    onPressed: () {},
                                    width: 0.25),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(162, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: YellowButton(
                                label: 'Log In', onPressed: () {}, width: 0.25),
                          ),
                          YellowButton(
                              label: 'Sign Up', onPressed: () {}, width: 0.25),
                          Image(
                              image: AssetImage('asset/images/inapp/logo.png')),
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  height: 82,
                  decoration: BoxDecoration(color: Colors.white38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GoogleFacebookLogin(
                        label: 'Google',
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('asset/images/inapp/google.jpg')),
                      ),
                      GoogleFacebookLogin(
                        label: 'Google',
                        onPressed: () {},
                        child: const Image(
                            image:
                                AssetImage('asset/images/inapp/facebook.jpg')),
                      ),
                      GoogleFacebookLogin(
                          label: 'Google',
                          onPressed: () {},
                          child: const Icon(
                            Icons.person,
                            size: 55,
                            color: Colors.lightBlueAccent,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleFacebookLogin extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Widget child;

  const GoogleFacebookLogin(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            SizedBox(height: 50, width: 50, child: child),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
