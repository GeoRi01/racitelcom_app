import 'package:db_racitel/page/login.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
                  padding: EdgeInsets.only(top: 10),
                ),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
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
                        const EdgeInsets.only(left: 40, right: 40, top: 80),
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Email Address',
                          labelStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                          hintText: 'Enter Email Address',
                          hintStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Email Code',
                          labelStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                          hintText: 'Enter Email Code',
                          hintStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'New Password',
                          labelStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                          hintText: 'Enter New Password',
                          hintStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF000159),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Confirm New Password',
                          labelStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                          hintText: 'Enter New Password',
                          hintStyle: const TextStyle(
                            color: Color(0XFF9F9E9E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 220,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFF000159),
                        height: screenHeight * .07,
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFF5F5F5),
                        height: screenHeight * .07,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0XFF000159),
                          ),
                        ),
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
