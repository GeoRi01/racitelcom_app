import 'package:db_racitel/shop/checkout.dart';
import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class CartPage extends StatefulWidget {
  final String username;
  const CartPage(this.username, {super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String username = '';
  int switcherIndex1 = 0;

  @override
  void initState() {
    super.initState();
    username = widget.username;
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
                      width: 90,
                    ),
                    const Text(
                      'My Cart',
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
                      SlideSwitcher(
                        onSelect: (index) =>
                            setState(() => switcherIndex1 = index),
                        slidersColors: const [Color(0xFF0A0C7F)],
                        containerColor: const Color(0xFF577AA8),
                        containerHeight: screenHeight * .04,
                        containerWight: screenWidth * .729,
                        children: [
                          Text(
                            'Cart',
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
                            'Favorites',
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
                        SizedBox(height: screenHeight * .025),
                        Container(
                          margin: const EdgeInsets.only(left: 0, right: 0),
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, right: 15),
                          height: screenHeight * .23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE5F7FF),
                          ),
                          child: ListView(
                            children: [
                              SizedBox(
                                height: screenHeight * .001,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.delete,
                                    size: 25,
                                  ),
                                  Image.asset(
                                    'assets/images/router1.png',
                                    height: 70,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    width: screenWidth * .02,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Router',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Quantity: 5',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        '\n ₱ 15,000',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * .01,
                              ),
                              Container(
                                height: screenHeight * .001,
                                width: screenWidth * .25,
                                color: Colors.grey.withOpacity(.5),
                              ),
                              SizedBox(
                                height: screenHeight * .01,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.delete,
                                    size: 25,
                                  ),
                                  Image.asset(
                                    'assets/images/charger1.png',
                                    height: 70,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    width: screenWidth * .02,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Power Adapter',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Quantity: 5',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        '\n ₱ 2,500',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 350,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: const Color.fromARGB(255, 29, 41, 133),
                            height: screenHeight * .06,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CheckoutPage(username),
                                ),
                              );
                            },
                            child: const Text(
                              "Checkout",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ] else ...[
                        SizedBox(height: screenHeight * .025),
                        Container(
                          margin: const EdgeInsets.only(left: 0, right: 0),
                          padding: const EdgeInsets.only(
                              left: 15, top: 20, right: 15),
                          height: screenHeight * .13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE5F7FF),
                          ),
                          child: ListView(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.delete,
                                    size: 25,
                                  ),
                                  Image.asset(
                                    'assets/images/ethernet1.png',
                                    height: 70,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    width: screenWidth * .02,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'LAN Cable',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Quantity: 5',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        '\n ₱ 1,500',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * .1,
                                  ),
                                  const Text(
                                    'Add to cart',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
