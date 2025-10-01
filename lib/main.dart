import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),                  child: const Text(
                    'Stadion Etihad',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Etihad Campus, Manchester, Inggris',
                  style: TextStyle(
                    color: Colors.black, // Warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star, // Ikon bintang
            color: Colors.red[500], // Warna merah
          ),
          const Text('41'), // Teks angka 41
        ],
      ),
    );
    
    Color color = Theme.of(context).primaryColor;
    
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
          'Stadion Etihad, yang dikenal luas sebagai rumah bagi klub sepak bola raksasa Inggris, Manchester City, adalah salah satu arena olahraga paling modern dan mengesankan di Eropa. Terletak di Clayton, Manchester, stadion ini bukan hanya sebuah lapangan sepak bola, tetapi juga simbol ambisi dan kesuksesan klub yang dijuluki "The Citizens". Hanif Faishal Hilmi 2341720116.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Hanif Faishal Hilmi 2341720116',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/etihad_stadium.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color
            ),
          ),
        )
      ],
    );
  }
}