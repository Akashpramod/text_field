import 'package:flutter/material.dart';

class DataStore extends StatelessWidget {
  final String name;
  final String age;

   DataStore({required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('display Data', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('name : $name'),
            SizedBox(height: 25),
            Text('age : $age')
          ],
        ),
      ),
    );
  }
}