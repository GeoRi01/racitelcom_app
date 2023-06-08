// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {
  final String productName;
  final String productPrice;
  final Uint8List imageData;

  Product(
      {required this.productName,
      required this.productPrice,
      required this.imageData});
}

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response = await http
        .get(Uri.parse('http://192.168.100.26/racitelcom_php/fetch_image.php'));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = jsonDecode(response.body);
      setState(() {
        products = responseData
            .map((data) => Product(
                  productName: data['productName'],
                  productPrice: data['productPrice'],
                  imageData: base64Decode(data['imageData']),
                ))
            .toList();
      });
    } else {
      print('Failed to fetch products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 290,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: const Color(0xFF0A0C7F),
              width: 2,
            ),
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.memory(
                  product.imageData,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.productName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .merge(const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      product.productPrice,
                      style: Theme.of(context).textTheme.titleSmall!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFE40000),
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: const Color(0XFF0A0C7F),
                          height: 35,
                          onPressed: () {},
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.heart,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
