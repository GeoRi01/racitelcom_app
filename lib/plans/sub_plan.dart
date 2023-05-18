import 'package:flutter/material.dart';

class SubscribePlanPage extends StatefulWidget {
  const SubscribePlanPage({super.key});

  @override
  State<SubscribePlanPage> createState() => _SubscribePlanPageState();
}

class _SubscribePlanPageState extends State<SubscribePlanPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color(0xFF0A0C7F),
            height: screenHeight * 1,
            width: screenWidth,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .07,
                ),
                Container(
                  height: screenHeight * .918,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 50),
                    children: [
                      const Text(
                        'SUBSCRIBE PLAN',
                        style: TextStyle(
                          color: Color(0xFF000059),
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'To subscribe call: ',
                        style: TextStyle(
                          color: Color(0XFF3B3B3B),
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, right: 25),
                        height: screenHeight * .20,
                        width: screenWidth * .20,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: const Color(0xFF000059),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "0925-722-4835",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "0917-722-4835",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * .01),
                            const Text(
                              "(044) 248 8888",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'You can also reach us here:',
                        style: TextStyle(
                          color: Color(0XFF3B3B3B),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 2, left: 10, right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/contact.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '*Lock-in period of 24 months ',
                        style: TextStyle(
                          color: Color(0XFFE40000),
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 15, left: 25, right: 25),
                        height: screenHeight * .20,
                        width: screenWidth * .20,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: const Color(0xFF000059),
                            width: screenWidth * .01,
                          ),
                        ),
                        child: ListView(
                          children: const [
                            Text(
                              "Requirements:",
                              style: TextStyle(
                                  fontSize: 30,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(
                              "\u2022 Filled-out form",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "\u2022 Photocopy of 1 valid ID",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "\u2022 Proof of Billing",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFF5F5F5),
                        height: screenHeight * .06,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
