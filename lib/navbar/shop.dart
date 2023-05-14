// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:db_racitel/category/all.dart';
import 'package:db_racitel/category/cables.dart';
import 'package:db_racitel/category/routers.dart';
import 'package:db_racitel/category/telephone.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xFF0A0C7F),
            height: screenHeight * .915,
            width: screenWidth,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                const Text(
                  'SHOP',
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35),
                                      borderSide: const BorderSide(
                                        color: Color(0XFF0A0C7F),
                                        width: 2,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35),
                                      borderSide: const BorderSide(
                                        color: Color(0XFF0A0C7F),
                                        width: 2,
                                      ),
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      size: 35,
                                    ),
                                    prefixIconColor: const Color(0XFF0A0C7F),
                                    hintText: "Search Product...",
                                    hintStyle: const TextStyle(
                                        fontSize: 18, color: Color(0XFFADADAD)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: IconButton(
                                color: const Color(0XFF0A0C7F),
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 35,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TabBar(
                          controller: _tabController,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            color: const Color(0XFF0A0C7F),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: const Color(0XFF0A0C7F),
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "All",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: const Color(0XFF0A0C7F),
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Routers",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: const Color(0XFF0A0C7F),
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Cables",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: const Color(0XFF0A0C7F),
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Telephone",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 540,
                          child: TabBarView(
                            controller: _tabController,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: AllCategory(),
                              ),
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: RoutersCategory(),
                              ),
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: CablesCategory(),
                              ),
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: TelephoneCategory(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
