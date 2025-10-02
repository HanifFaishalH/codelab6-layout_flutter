// lib/pages/home_page.dart

import 'package:belanja/models/Item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Text('${itemArgs.name} with ${itemArgs.price}'),
      ),
    );
  }
}