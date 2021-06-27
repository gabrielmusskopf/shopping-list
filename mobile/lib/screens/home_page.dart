import 'package:flutter/material.dart';
import 'package:mobile/components/body.dart';
import 'package:mobile/components/product_card.dart';
import 'package:mobile/constants/colors.dart';
import 'package:mobile/themes/themes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController listController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List _items = [];

  void _addItem(item) {
    setState(() {
      _items.add(item);
    });
  }

  void _deleteItem(item) {
    setState(() {
      _items.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      actions: [
        IconButton(
          onPressed: () {
            currentTheme.toggleTheme();
          },
          icon: const Icon(
            Icons.brightness_4_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
