// lib/widgets/item_list.dart
import 'package:flutter/material.dart';
import '../model/item.dart';

class ItemList extends StatelessWidget {
  final List<Item> items;
  final String filter;

  ItemList({required this.items, required this.filter});

  List<Item> getFilteredItems() {
    // Filter items based on the condition (name contains the filter string)
    return items
        .where((item) => item.name.toLowerCase().contains(filter.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Item> filteredItems = getFilteredItems();

    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredItems[index].name),
        );
      },
    );
  }
}
