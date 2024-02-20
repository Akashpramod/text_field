import 'package:flutter/material.dart';
import 'package:text_field/data.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

 final TextEditingController nameController = TextEditingController();
 final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field', textAlign: TextAlign.center,),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(hintText: "enter your name"),
        ),
        SizedBox(height: 20),
        TextField(
          controller: ageController,
          decoration: InputDecoration(hintText: 'enter you age'),
        
        ),
        SizedBox(height: 25),
        ElevatedButton(onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(
            builder:(context) => DataStore(
            name: nameController.text,
            age: ageController.text,)
            ),
          );
        
        }, child: Text('submit'))
        ],
        ),
      )
    );
  }
}