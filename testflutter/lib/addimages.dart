import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZSUyMGZsb3dlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_c26jiFsFeNAwCndrEr-C5-GBNGY1vBG3wo53s7YS4g&usqp=CAU&ec=48665698.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
