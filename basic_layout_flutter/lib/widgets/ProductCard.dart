import 'package:codelab6_layout_flutter/models/Item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCard extends StatelessWidget{
  final Item item;
  const ProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // image
            Expanded(
              child: Hero(
                tag: 'productImage_${item.name}',
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, size: 100);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rp ${item.price}',
                    style: TextStyle(
                        color: Colors.red.shade700,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(item.rating.toString(),
                          style: const TextStyle(fontSize: 12)
                      ),
                      const Spacer(),
                      Text('Stok: ${item.stock}',
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}