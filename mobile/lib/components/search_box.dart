import 'package:flutter/material.dart';
import 'package:mobile/constants/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: 'Adicionar',
          hintStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
