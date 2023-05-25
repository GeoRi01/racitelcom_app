// ignore_for_file: unused_element

import 'package:db_racitel/page/login.dart';
import 'package:db_racitel/settings/help.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

int _selectedIndex = 0;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
          children: [
            SizedBox(
              height: screenHeight * .1,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0XFF000159),
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  'Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Color(0xFF000159),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .09,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0XFFF5F5F5),
                height: 70,
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.description,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(fontSize: 23, color: Color(0XFF000159)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0XFFF5F5F5),
                height: 70,
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.privacy_tip,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Privacy",
                      style: TextStyle(fontSize: 23, color: Color(0XFF000159)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0XFFF5F5F5),
                height: 70,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpSupportPage(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.help_outline,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Help & Support",
                      style: TextStyle(fontSize: 23, color: Color(0XFF000159)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 230,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0XFFF5F5F5),
              height: 60,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text(
                "Log Out",
                style: TextStyle(fontSize: 23, color: Color(0XFF000159)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
