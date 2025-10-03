import 'package:codelab6_layout_flutter/models/Item.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';
import 'package:flutter/material.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/item',
      builder: (context, state) {
        final item = state.extra as Item;
        return ItemPage(item: item);
      },
    )
  ]
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 3. Gunakan MaterialApp.router dan hapus 'routes' & 'initialRoute'
    return MaterialApp.router(
      routerConfig: _router, // <- Hubungkan konfigurasi router
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}