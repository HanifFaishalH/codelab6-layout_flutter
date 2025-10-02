import 'package:belanja/models/Item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List - 4:21 PM'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: items.map((item) {
            return InkWell(
              onTap: () {
                // UBAH BARIS INI: Kirim 'item' sebagai 'arguments'
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}