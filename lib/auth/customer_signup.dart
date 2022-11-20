// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/welcome_screen');
                      },
                      icon: const Icon(Icons.home_work),
                      iconSize: 40,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.purpleAccent,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: IconButton(
                            icon: const Icon(
                              Icons.camera,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print('pick image from camera');
                            },
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: IconButton(
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print('pick image from gallery');
                            },
                          )),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter Your Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purple, width: 1),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.deepPurple, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purple, width: 1),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.deepPurple, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purple, width: 1),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.deepPurple, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Already Have Account?',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Material(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
