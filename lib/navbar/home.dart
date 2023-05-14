import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage(this.username, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = '';

  @override
  void initState() {
    super.initState();
    username = widget.username;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          width: screenWidth * 2,
          height: screenHeight * .1,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xFF000159),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            border: Border.all(
              color: const Color(0xFF000159),
              width: screenWidth * .01,
            ),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/profile.png"),
              ),
              Text(
                username,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * .025),
        Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/home.jpg"),
          ),
        ),
        SizedBox(height: screenHeight * .025),
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          height: screenHeight * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFE5F7FF),
          ),
          child: ListView(
            children: [
              const Text(
                "Upcoming Payments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.wifi,
                    size: 35,
                  ),
                  SizedBox(
                    width: screenWidth * .02,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Racitelcom Fiber',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        '440012355678',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Due Date: 31 March 2023',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * .25,
                  ),
                  const Text(
                    'Pay Now',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
                    Icons.wifi,
                    size: 35,
                  ),
                  SizedBox(
                    width: screenWidth * .02,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Racitelcom Fiber',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        '440012355678',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Due Date: 31 March 2023',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * .25,
                  ),
                  const Text(
                    'Pay Now',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
            ],
          ),
        ),
        SizedBox(height: screenHeight * .025),
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            children: [
              const Text(
                'Special Offers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                width: screenWidth * .38,
              ),
              const Text(
                'See all',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(height: screenHeight * .025),
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: screenHeight * .18,
                width: screenWidth * .40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: screenWidth * .01,
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      '5 Mbps',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0xFF0A0C7F),
                      ),
                    ),
                    Text(
                      'Speed burst to 5 mbps. Average speed of up to 3mbps',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF6286CB),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: screenHeight * .18,
                width: screenWidth * .40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: screenWidth * .01,
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      '10 Mbps',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0xFF0A0C7F),
                      ),
                    ),
                    Text(
                      'Speed burst to 10 mbps. Average speed of up to 5mbps',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF6286CB),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * .02,
        )
      ],
    );
  }
}
