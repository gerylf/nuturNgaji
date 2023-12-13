import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutur Ngaji'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Logo Aplikasi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/nuturngaji.jpg',
                width: 150.0,
                height: 150.0,
              ),
            ),

            // Header yang dapat di klik
            InkWell(
              onTap: () {
                // Lakukan sesuatu saat header diklik
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Header yang Dapat Diklik',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Tiga Card Interaktif
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Card Pertama
                InkWell(
                  onTap: () {
                    // Lakukan sesuatu saat card pertama diklik
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Icon(Icons.favorite, size: 50.0, color: Colors.red),
                        Text('Card 1'),
                      ],
                    ),
                  ),
                ),

                // Card Kedua
                InkWell(
                  onTap: () {
                    // Lakukan sesuatu saat card kedua diklik
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Icon(Icons.star, size: 50.0, color: Colors.yellow),
                        Text('Card 2'),
                      ],
                    ),
                  ),
                ),

                // Card Ketiga
                InkWell(
                  onTap: () {
                    // Lakukan sesuatu saat card ketiga diklik
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Icon(Icons.camera, size: 50.0, color: Colors.blue),
                        Text('Card 3'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
