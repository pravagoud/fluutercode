import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define the gradient colors for the navigation bar icons
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OjasInnovative Profile'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green
                  ], // Define your gradient colors
                ),
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("lib/assets/prava.png"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Pravalika Gattu",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 76, 41, 228))),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              splashColor: Colors.deepPurple,
              onTap: () {
                // Handle drawer item tap
                // You can navigate to a new page here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              splashColor: Colors.deepPurple,
              onTap: () {
                // Handle drawer item tap
                // You can navigate to a new page here
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Images'),
              splashColor: Colors.deepPurple,
              onTap: () => Navigator.pushReplacementNamed(context, 'image'),
            ),
            ListTile(
                leading: Icon(Icons.data_object),
                title: Text('DataApis'),
                splashColor: Colors.deepPurple,
                onTap: () => Navigator.pushReplacementNamed(context, 'home')),
          ],
        ),
      ),
      body: Center(
        child: Text('AvengersProfile'),
      ),
    );
  }
}
