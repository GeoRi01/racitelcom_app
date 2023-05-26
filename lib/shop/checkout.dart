import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CheckoutPage extends StatefulWidget {
  final String username;
  const CheckoutPage(this.username, {super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String username = '';
  int switcherIndex1 = 0;

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
    fetchDataFuture = fetchData(username);
  }

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
                      width: 85,
                    ),
                    const Text(
                      'Checkout',
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
                        const EdgeInsets.only(top: 30, left: 65, right: 65),
                    children: [
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
                              return Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 70,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 30),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              data[0]['subs_fname'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              data[0]['subs_lname'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          data[0]['subs_address'],
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              data[0]['subs_barangay'],
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                            const Text(
                                              ',',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              data[0]['subs_municipality'],
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                            const Text(
                                              ',',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              data[0]['subs_province'],
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return const Text('No data available');
                            }
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
