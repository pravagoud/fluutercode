import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TableExample(),
    );
  }
}

class TableExample extends StatelessWidget {
  final List<Map<String, String>> tableData = [
    {'name': 'Pravalika', 'age': '23', 'city': 'New York'},
    {'name': 'Bhagya', 'age': '32', 'city': 'London'},
    {'name': 'Siri', 'age': '41', 'city': 'Paris'},
     {'name': 'Preethi', 'age': '32', 'city': 'Usa'},
    {'name': 'Vahini', 'age': '41', 'city': 'Nepal'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('City')),
        ],
        rows: List<DataRow>.generate(
          tableData.length,
          (index) {
            final rowData = tableData[index];
            return DataRow(
              cells: <DataCell>[
                DataCell(
                  Center(child: Text(rowData['name']!)),
                ),
                DataCell(
                  Center(child: Text(rowData['age']!)),
                ),
                DataCell(
                  Center(child: Text(rowData['city']!)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
