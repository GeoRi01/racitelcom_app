import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutersCategory extends StatefulWidget {
  const RoutersCategory({super.key});

  @override
  State<RoutersCategory> createState() => _RoutersCategoryState();
}

class _RoutersCategoryState extends State<RoutersCategory> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Router",
      "price": "₱ 3,000.00",
      "images": "assets/images/router1.png",
    },
  ];
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
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
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
                child: Image.asset(
                  "${gridMap.elementAt(index)['images']}",
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
                      "   ${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .merge(const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "   ${gridMap.elementAt(index)['price']}",
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
