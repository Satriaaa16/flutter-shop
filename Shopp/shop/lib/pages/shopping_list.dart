import 'package:flutter/material.dart';
import '../model/item.dart';
import '../widgets/shopping_item.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  List<Item> shoppingList = [
    Item(
      'Sepatu',
    ),
    Item('Baju'),
    Item('Sandal'),
    Item('Kulkas'),
    Item('Lemari'),
    Item('Pintu'),
    Item('Kacamata'),
    Item('Telur'),
    Item('Kipas'),
    Item('Gelas'),
    Item('Kaca'),
    Item('Piring'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView.builder(
        itemCount: shoppingList.length,
        itemBuilder: (context, index) {
          return ShoppingItem(
            item: shoppingList[index],
            onDelete: () {
              // Hapus item dari daftar belanjaan
              setState(() {
                shoppingList.removeAt(index);
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan item baru ke daftar belanjaan
          setState(() {
            shoppingList.add(Item('New Item'));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
