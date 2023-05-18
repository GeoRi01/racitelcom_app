import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool _showPassword = false;
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
                  width: 15,
                ),
                const Text(
                  'Change Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Color(0xFF000159),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .08,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                labelText: 'Old Password',
                labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Enter Old Password',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
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
                labelText: 'New Password',
                labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Enter New Password',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * .035,
            ),
            TextFormField(
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
                labelText: 'Re-Type New Password',
                labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Re-Enter New Password',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: screenHeight * .35,
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
            SizedBox(
              height: screenHeight * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * .02,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
