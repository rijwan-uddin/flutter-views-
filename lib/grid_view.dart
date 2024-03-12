import 'package:flutter/material.dart';

class gridViewExample extends StatelessWidget {
  const gridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (index) => 'Item ${index + 1}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,

          ),
          itemCount: items.length,
          itemBuilder: (context,index)=>Card(
            child: Center(
              child: Text(items[index]),
            ),
          ),
      ),
    );
  }
}
