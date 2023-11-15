import 'package:flutter/material.dart';
import '../model/item.dart';

class ShoppingItem extends StatelessWidget {
  final Item item;
  final VoidCallback onDelete;

  ShoppingItem({required this.item, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}
