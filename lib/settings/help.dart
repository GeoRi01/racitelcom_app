import 'package:flutter/material.dart';

class HelpSupportPage extends StatefulWidget {
  const HelpSupportPage({super.key});

  @override
  State<HelpSupportPage> createState() => _HelpSupportPageState();
}

class _HelpSupportPageState extends State<HelpSupportPage> {
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
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'Help & Support',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .01,
                ),
                Container(
                  height: screenHeight * .916,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 65),
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(Icons.help_outlined,
                          size: 100, color: Color(0XFF3B3B3B)),
                      const Text(
                        'How can we help you?',
                        style: TextStyle(
                          color: Color(0XFF3B3B3B),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0XFFF5F5F5),
                        height: 70,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.headphones,
                              size: 50,
                              color: Color(0XFF3B3B3B),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 26, color: Color(0XFF3B3B3B)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .05,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        height: screenHeight * .15,
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Icon(
                        Icons.email_outlined,
                        size: 80,
                        color: Color(0XFF3B3B3B),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Send us an e-mail:',
                        style: TextStyle(
                          color: Color(0XFF9F9E9E),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'racitelcom.inc.ph@gmail.com',
                        style: TextStyle(
                          color: Color(0XFF3B3B3B),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
