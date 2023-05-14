import 'package:db_racitel/plans/sub_plan.dart';
import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class PlansPage extends StatefulWidget {
  const PlansPage({super.key});

  @override
  State<PlansPage> createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int switcherIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          color: const Color(0xFF0A0C7F),
          height: screenHeight * .915,
          width: screenWidth,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              const Text(
                'PLANS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
              SizedBox(
                height: screenHeight * .01,
              ),
              Container(
                height: screenHeight * .8311718,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(top: 30, left: 65, right: 65),
                  children: [
                    SlideSwitcher(
                      onSelect: (index) =>
                          setState(() => switcherIndex1 = index),
                      slidersColors: const [Color(0xFF0A0C7F)],
                      containerColor: const Color(0xFF577AA8),
                      containerHeight: screenHeight * .04,
                      containerWight: screenWidth * .729,
                      children: [
                        Text(
                          'Residential Plan',
                          style: TextStyle(
                            fontWeight: switcherIndex1 == 0
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: switcherIndex1 == 0
                                ? Colors.white
                                : Colors.white,
                          ),
                        ),
                        Text(
                          'Commercial Plan',
                          style: TextStyle(
                            fontWeight: switcherIndex1 == 0
                                ? FontWeight.w500
                                : FontWeight.w400,
                            color: switcherIndex1 == 0
                                ? Colors.white
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * .02,
                    ),
                    if (switcherIndex1 == 0) ...[
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "10 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 1288.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 15 mbps. Average speed of up to 10mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "25 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 1688.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 30 mbps. Average speed of up to 25mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "40 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 1888.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 50 mbps. Average speed of up to 40mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "80 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 2888.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 100 mbps. Average speed of up to 80mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                    ] else ...[
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "3 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 2088.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 5 mbps. Average speed of up to 3mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "10 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 3888.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 15 mbps. Average speed of up to 10mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "25 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 4888.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 30 mbps. Average speed of up to 25mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        height: screenHeight * .17,
                        width: screenWidth * .35,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF0A0C7F),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "40 Mbps",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A0C7F),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0A0C7F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  height: screenHeight * .04,
                                  width: screenWidth * .3,
                                  padding: const EdgeInsets.only(top: 6),
                                  child: const Text(
                                    "₱ 8888.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "Speed burst to 50 mbps. Average speed of up to 40mbps",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0XFF6286CB), fontSize: 14),
                            ),
                            SizedBox(
                              height: screenHeight * .001,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: const Color(0XFFE40000),
                              height: screenHeight * .03,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscribePlanPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
