import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const Appp());
}

class Appp extends StatefulWidget {
  const Appp({Key? key}) : super(key: key);

  @override
  _DataTableExampleState createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<Appp> {
  Future<List<Map<String, dynamic>>> fetchPeopleData() async {
    // Replace the URL with your API endpoint
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((person) {
        return {
          'id': person['id']?.toString() ?? '',
          // 'url': person['url'],
        };
      }).toList();
    } else {
      throw Exception('Failed to fetch data from API');
    }
  }

  void updateData(int index) {
    // Handle update logic for the row at the given index
    if (kDebugMode) {
      print('Update row $index');
    }
  }

  void deleteData(int index) {
    // Handle delete logic for the row at the given index
    if (kDebugMode) {
      print('Delete row $index');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter DataTable Example'),
        ),
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: fetchPeopleData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final peopleData = snapshot.data!;
              return ListView(
                children: <Widget>[
                  const Center(
                    child: Text(
                      'People-Chart',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataTable(
                    columns: const [
                      DataColumn(
                        label: Text(
                          'ID',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Photos',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Actions',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      peopleData.length,
                      (index) => DataRow(
                        cells: [
                          DataCell(Text(peopleData[index]['id']!)),
                          DataCell(Image.network('https://hips.hearstapps.com/hmg-prod/images/cute-baby-animals-1558535060.jpg?crop=1.00xw:0.669xh;0,0.158xh&resize=1200:*')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {
                                    updateData(index);
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    deleteData(index);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
