// ignore_for_file: unused_element

import 'package:db_racitel/bills/bills_june.dart';
import 'package:flutter/material.dart';

class ViewBillPage extends StatefulWidget {
  const ViewBillPage({super.key});

  @override
  State<ViewBillPage> createState() => _ViewBillPageState();
}

int _selectedIndex = 0;

class _ViewBillPageState extends State<ViewBillPage> {
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
              height: screenHeight * .075,
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
                  width: 70,
                ),
                const Text(
                  'My Bill',
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "January",
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "February",
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "March",
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "April",
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "May",
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
                      builder: (context) => const JuneBillPage(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: Color(0XFF000159),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "June",
                      style: TextStyle(fontSize: 23, color: Color(0XFF000159)),
                    ),
                  ],
                ),
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
