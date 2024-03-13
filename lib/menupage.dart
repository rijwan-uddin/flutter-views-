import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'homepage.dart';
import 'input_widget.dart';
import 'list_view.dart';
class menupage extends StatelessWidget {
  const menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu'),
      ),
      body: Center(
        child: Column(
         children: [
           SizedBox(height: 10,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);
             },
             child: Text('Go Home'),
           ),
           SizedBox(height: 10,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>gridViewExample()),);
             },
             child: Text('Grid_View'),
           ),
           SizedBox(height: 10,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewExample()),);
             },
             child: Text('List_View'),
           ),
           SizedBox(height: 10,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>inputwidget()),);
             },
             child: Text('Input Widget'),
           )
         ],
        ),
      ),

    );
  }
}
