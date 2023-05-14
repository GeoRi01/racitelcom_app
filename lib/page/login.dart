// ignore_for_file: deprecated_member_use, avoid_print, use_build_context_synchronously

import 'dart:convert';

import 'package:db_racitel/page/navbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

_launchURL() async {
  const url = 'https://www.facebook.com/kent.sabeniano/';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  List userdata = [];
  bool _showPassword = false;

  Future<void> validateUser(
      TextEditingController username, TextEditingController password) async {
    // URL to the PHP script on your server
    const String phpScriptUrl =
        'http://192.168.100.26/db_racitel/validate_user.php';

    // Create a map of request parameters
    Map<String, String> requestBody = {
      'username': username.text,
      'password': password.text,
    };

    try {
      final response = await http.post(
        Uri.parse(phpScriptUrl),
        body: requestBody,
      );

      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        if (result['success']) {
          // User validation successful
          print('User validated successfully!');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(username.text),
            ),
          );
        } else {
          // User validation failed
          print('User validation failed!');
        }
      } else {
        // Error occurred during the HTTP request
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Exception occurred during the HTTP request
      print('Exception: $e');
    }
  }

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
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .07),
          children: [
            SizedBox(
              height: screenHeight * .125,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: screenHeight * .125,
              width: screenWidth * .5,
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            const Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Color(0xFF000159),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            const Text(
              'To continue using this app,\nplease sign up first.',
              style: TextStyle(
                fontSize: 18,
                color: Color(0XFF3B3B3B),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
              controller: username,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                labelText: 'Username',
                labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Enter Username',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
              controller: password,
              obscureText: !_showPassword,
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  child: Icon(
                    _showPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Enter Password',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .15,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF000159),
              height: screenHeight * .06,
              onPressed: () {
                validateUser(username, password);
              },
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't have any Account?"),
                SizedBox(
                  width: screenWidth * .01,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL();
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
