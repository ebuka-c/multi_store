import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:multi_store/main_screens/supplier_home.dart';
import 'package:multi_store/widgets/yellowButton.dart';

const textColors = [
  Colors.yellowAccent,
  Colors.red,
  Colors.blueAccent,
  Colors.green,
  Colors.teal
];

const textStyle =
    TextStyle(fontSize: 45, fontWeight: FontWeight.bold, fontFamily: 'Acme');

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'WELCOME',
                    textStyle: textStyle,
                    colors: textColors,
                  ),
                  ColorizeAnimatedText(
                    'Duck Store',
                    textStyle: textStyle,
                    colors: textColors,
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
              // Text(
              //   'welcome'.toUpperCase(),
              //   style: const TextStyle(color: Colors.white, fontSize: 30),
              // ),
              const SizedBox(
                height: 120,
                width: 200,
                child: Image(image: AssetImage('asset/images/inapp/logo.png')),
              ),
              SizedBox(
                height: 80,
                child: DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Acme',
                      color: Colors.lightBlueAccent),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('BUY'),
                      RotateAnimatedText('SELL'),
                      RotateAnimatedText('SHOP'),
                    ],
                    repeatForever: true,
                  ),
                ),
              ),
              // Text(
              //   'shop'.toUpperCase(),
              //   style: const TextStyle(color: Colors.white, fontSize: 30),
              // ),
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
                              AnimatedLogo(controller: _controller),
                              YellowButton(
                                  label: 'Log In',
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/supplier_home');
                                  },
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
                                label: 'Log In',
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/customer_home');
                                },
                                width: 0.25),
                          ),
                          YellowButton(
                              label: 'Sign Up',
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/customer_signup');
                              },
                              width: 0.25),
                          AnimatedLogo(controller: _controller),
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  height: 82,
                  decoration:
                      BoxDecoration(color: Colors.white38.withOpacity(0.3)),
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
                        label: 'FaceBook',
                        onPressed: () {},
                        child: const Image(
                            image:
                                AssetImage('asset/images/inapp/facebook.jpg')),
                      ),
                      GoogleFacebookLogin(
                          label: 'Guest',
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

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    Key? key,
    required AnimationController controller,
  })  : _controller = controller,
        super(key: key);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: const Image(image: AssetImage('asset/images/inapp/logo.png')),
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
