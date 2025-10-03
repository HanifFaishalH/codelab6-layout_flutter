import 'package:codelab6_layout_flutter/models/Item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          }
        ),
        title: const Text('Detail Produk'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'productImage_${item.name}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                      item.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 100);
                      },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                item.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              const SizedBox(height: 8),
              Text(
                'Rp ${item.price}',
                style: TextStyle(
                    color: Colors.red.shade700,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '${item.rating} Rating',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    'Stok: ${item.stock}',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              const Divider(height: 30, thickness: 1),
              const Text(
                'Deskripsi Produk',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                'Ini adalah deskripsi produk berkualitas tinggi yang akan memenuhi semua kebutuhan Anda. Dibuat dengan bahan-bahan terbaik dan diproses secara higienis untuk menjamin kualitas terbaik sampai ke tangan Anda.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  // Aksi untuk menambah ke keranjang bisa ditambahkan di sini
                },
                icon: const Icon(Icons.shopping_cart_checkout),
                label: const Text('Tambah ke Keranjang'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}