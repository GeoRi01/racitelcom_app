import 'package:db_racitel/settings/change_pass.dart';
import 'package:db_racitel/settings/profile.dart';
import 'package:db_racitel/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AccountPage extends StatefulWidget {
  final String username;
  const AccountPage(this.username, {Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String username = '';
  Future<List<dynamic>>? fetchDataFuture;

  Future<List<dynamic>> fetchData(String searchString) async {
    final url = Uri.parse(
        'http://192.168.100.26/racitelcom_php/fetch_data.php?searchString=$searchString');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  void initState() {
    super.initState();
    username = widget.username;
    fetchDataFuture =
        fetchData(username); // Fetch data when the page is initialized
  }

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
                'ACCOUNT',
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
                  padding: const EdgeInsets.only(top: 30),
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: const Image(
                                    image:
                                        AssetImage("assets/images/profile.png"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                username,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              FutureBuilder<List<dynamic>>(
                                future: fetchDataFuture,
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    final data = snapshot.data;
                                    if (data != null && data.isNotEmpty) {
                                      return Text(
                                        data[0]['subs_address'],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
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
                                        builder: (context) =>
                                            ProfilePage(username),
                                      ),
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.person_2_outlined,
                                        size: 40,
                                        color: Color(0XFF3B3B3B),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "My Profile",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Color(0XFF3B3B3B)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
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
                                        Icons.schedule_outlined,
                                        size: 40,
                                        color: Color(0XFF3B3B3B),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Order Status",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Color(0XFF3B3B3B)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
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
                                        builder: (context) =>
                                            const ChangePasswordPage(),
                                      ),
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.autorenew_outlined,
                                        size: 40,
                                        color: Color(0XFF3B3B3B),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Change Password",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Color(0XFF3B3B3B)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
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
                                        builder: (context) =>
                                            const SettingsPage(),
                                      ),
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.settings_outlined,
                                        size: 40,
                                        color: Color(0XFF3B3B3B),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Settings",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Color(0XFF3B3B3B)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Rest of the code...
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
