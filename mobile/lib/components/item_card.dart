import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final item;
  final onDelete;

  const ItemCard({this.item, this.onDelete});

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  void _tap() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 120,
            child: Text(widget.item),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                widget.onDelete(widget.item);
              },
              child: Icon(Icons.delete_forever))
        ],
      ),
    );
  }
}
