import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ImageDemo(),
  ));
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image(
              image: AssetImage("lib/assets/cats.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: AssetImage("lib/assets/dog.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: AssetImage("lib/assets/lion.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: AssetImage("lib/assets/parrot.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: AssetImage("lib/assets/rabbi.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: AssetImage("lib/assets/tiger.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZSUyMGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1564640227760-db286729bf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJvc2UlMjBmbG93ZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60.png"),
              width: 300,
              height: 300,
            ),
            Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1599421498111-ad70bebb536f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cm9zZSUyMGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60.png"),
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
