import 'package:db_racitel/navbar/account.dart';
import 'package:db_racitel/navbar/home.dart';
import 'package:db_racitel/navbar/payment.dart';
import 'package:db_racitel/navbar/plans.dart';
import 'package:db_racitel/navbar/shop.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String username;

  const Home(this.username, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int _selectedIndex = 0;

class _HomeState extends State<Home> {
  String username = '';

  @override
  void initState() {
    super.initState();
    username = widget.username;
  }

  List<Widget> screen = [];
  @override
  Widget build(BuildContext context) {
    screen = [
      HomePage(username),
      const ShopPage(),
      const PlansPage(),
      const PaymentPage(),
      AccountPage(username),
    ];
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: screenHeight * .085,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xFF0A0C7F),
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: screenHeight * .56,
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                    text: "Home",
                    icon: Icons.home_outlined,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 0;
                        },
                      );
                    },
                  ),
                  IconBottomBar(
                    text: "Shop",
                    icon: Icons.shopping_bag_outlined,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 1;
                        },
                      );
                    },
                  ),
                  IconBottomBar(
                    text: "Plans",
                    icon: Icons.wifi,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 2;
                        },
                      );
                    },
                  ),
                  IconBottomBar(
                    text: "Pay",
                    icon: Icons.payment,
                    selected: _selectedIndex == 3,
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 3;
                        },
                      );
                    },
                  ),
                  IconBottomBar(
                    text: "My Account",
                    icon: Icons.person,
                    selected: _selectedIndex == 4,
                    onPressed: () {
                      setState(
                        () {
                          _selectedIndex = 4;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 30,
            color: selected
                ? const Color.fromARGB(255, 255, 255, 255)
                : Colors.white.withOpacity(.5),
          ),
        ),
        SizedBox(
          height: screenHeight * .005,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              height: .1,
              color: selected
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
