import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ListviewExample extends StatelessWidget {
  const ListviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    List <String> items = List.generate(100, (index) =>'Item ${index+1}' );
    return Scaffold(

      appBar: AppBar(title: Text('List view'),),
      body: ListView(
        children:items.map((e)=>Text(e)).toList(),
      ),




    );
  }
}
