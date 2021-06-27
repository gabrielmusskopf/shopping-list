import 'package:flutter/material.dart';
import 'package:mobile/components/product_card.dart';
import 'package:mobile/components/search_box.dart';
import 'package:mobile/constants/colors.dart';
import 'package:mobile/models/product.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final int listIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      ProductCard(index, products[index]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
