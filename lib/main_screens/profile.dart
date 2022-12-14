import 'package:flutter/material.dart';
import 'package:multi_store/customerScreens/customer_orders.dart';
import 'package:multi_store/customerScreens/wishlist.dart';
import 'package:multi_store/main_screens/cart.dart';
import 'package:multi_store/widgets/appbar_widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.yellow, Colors.brown]),
          ),
        ),
        CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.white,
            expandedHeight: 140,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return FlexibleSpaceBar(
                  title: Center(
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: constraints.biggest.height <= 120 ? 1 : 0,
                      child: const Text(
                        'Account',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  background: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.brown])),
                    child: Container(
                      margin: const EdgeInsets.only(left: 25, right: 30),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('asset/images/inapp/guest.jpg'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 25),
                            child: Text(
                              'guest'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                          ),
                          child: TextButton(
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                child: Text(
                                  'Cart',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CartScreen(
                                            back: AppbarBackButton(),
                                          )));
                            },
                          ),
                        ),
                        Container(
                          color: Colors.yellow,
                          child: TextButton(
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                child: Text(
                                  'Orders',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 20),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CustomerOrders()));
                            },
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                          ),
                          child: TextButton(
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                child: Text(
                                  'Wishlist',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WishListScreen()));
                            },
                          ),
                        ),
                      ]),
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Column(children: [
                    const SizedBox(
                      height: 150,
                      child: Image(
                        image: AssetImage('asset/images/inapp/logo.png'),
                      ),
                    ),
                    const ProfileHeaderLabel(
                      headerLabel: '  Account Info  ',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: const [
                          RepeatedListTile(
                            title: 'Email Address',
                            subtitle: 'eg@gmail.com',
                            icon: Icons.mail,
                          ),
                          YellowDivider(),
                          RepeatedListTile(
                            title: 'Phone No.',
                            subtitle: '+2348111223455',
                            icon: Icons.mail,
                          ),
                          YellowDivider(),
                          RepeatedListTile(
                            title: 'Address',
                            subtitle: 'example: 12 University Road, Nsukka',
                            icon: Icons.location_pin,
                          ),
                        ]),
                      ),
                    ),
                    ProfileHeaderLabel(headerLabel: '  Account Settings  '),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          RepeatedListTile(
                            title: 'Edit Profile',
                            subtitle: '',
                            icon: Icons.edit,
                            onPressed: () {},
                          ),
                          const YellowDivider(),
                          RepeatedListTile(
                            title: 'Change Password',
                            icon: Icons.lock,
                            onPressed: () {},
                          ),
                          const YellowDivider(),
                          RepeatedListTile(
                            title: 'Log Out',
                            icon: Icons.logout,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/welcome_screen');
                            },
                          ),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatedListTile(
      {Key? key,
      required this.title,
      this.subtitle = '',
      required this.icon,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              height: 40,
              width: 50,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              )),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
              height: 40,
              width: 50,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              )),
        ],
      ),
    );
  }
}
