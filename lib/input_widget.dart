import 'package:flutter/material.dart';

class inputwidget extends StatefulWidget {
  const inputwidget({super.key});

  @override
  State<inputwidget> createState() => _inputwidgetState();
}

class _inputwidgetState extends State<inputwidget> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input widget'),
      ),
      body:  Center(
        child: Column(
          children: [
            TextField(
              controller:nameController ,
              decoration: InputDecoration(
                hintText: 'your name',
                // hintTextDirection: TextDirection.rtl
                // label: Text('Name'),

              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(nameController);
              },
              child: Text('okay'),

            )
          ],
        ),
      ),
    );
  }
}
