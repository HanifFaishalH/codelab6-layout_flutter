import 'package:codelab6_layout_flutter/models/Item.dart';
import 'package:codelab6_layout_flutter/widgets/ProductCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, imageUrl: 'images/sugar.jpg', stock: 10, rating: 4.5),
    Item(name: 'Salt', price: 2000, imageUrl: 'images/salt.jpg', stock: 20, rating: 4.0),
    Item(name: 'Minyak Goreng 2L', price: 32000, imageUrl: 'images/minyak.jpg', stock: 8, rating: 4.9),
    Item(name: 'Beras Premium 5kg', price: 68000, imageUrl: 'images/beras.jpg', stock: 5, rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Kelontong - 09:53 AM'),
        backgroundColor: Colors.teal, // <- Warna baru yang lebih segar
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          // itemBuilder sekarang menjadi sangat sederhana
          return ProductCard(item: items[index]);
        },
      ),
      // Menambahkan footer di bagian bawah
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Hanif Faishal Hilmi | 2341720116', // Ganti dengan Nama dan NIM Anda
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}