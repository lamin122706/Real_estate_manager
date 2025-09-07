import 'package:flutter/material.dart';

void main() {
  runApp(RealEstateManagerApp());
}

class RealEstateManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PropertyListScreen(),
    );
  }
}

class PropertyListScreen extends StatelessWidget {
  final List<String> properties = [
    'Apartment A - Downtown',
    'Apartment B - Near University',
    'Condo C - Riverside',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Properties'),
      ),
      body: ListView.builder(
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(properties[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Later: Add property adding form
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
