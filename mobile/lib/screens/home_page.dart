import 'package:flutter/material.dart';
import 'package:mobile/components/item_card.dart';
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
      appBar: AppBar(
        title: Text(widget.title),
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
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 50,
                child: Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemCard(
                        item: _items[index],
                        onDelete: _deleteItem,
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: _items.length,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: listController,
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Digite um produto",
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Campo vazio.";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _addItem(listController.text);
                            listController.clear();
                          }
                        },
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
