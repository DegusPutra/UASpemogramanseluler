import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pasien Rumah Sakit',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> pasien = [
    {'nama': 'Degus', 'alamat': 'Jln. Bedugul', 'diagnosa': 'Flu'},
    {'nama': 'Prass', 'alamat': 'Jln. Pomogan', 'diagnosa': 'Batuk'},
    {'nama': 'Galang', 'alamat': 'Jln. Sidakarya', 'diagnosa': 'Panas'},
    {
      'nama': 'Zafran',
      'alamat': 'Jln. Tukad Pancoran',
      'diagnosa': 'Demam Berdarah'
    },
    {'nama': 'Asep', 'alamat': 'Jln. Bedugul', 'diagnosa': 'Diare'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Pasien'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: pasien.length,
        itemBuilder: (context, index) {
          final pasienData = pasien[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pasienData['nama'] ?? 'Nama tidak tersedia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      pasienData['alamat'] ?? 'Alamat tidak tersedia',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      pasienData['diagnosa'] ?? 'Diagnosa tidak tersedia',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
