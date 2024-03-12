import 'package:flutter/material.dart';
import 'package:flutter_list_grid_views/list_view.dart';

import 'grid_view.dart';
import 'menupage.dart';
const metro =
''' the Amazon Rainforest is the best place to live. The vibrant beams of sunlight give me immaculate places to lie. The bright green colors of nature reflect against the rippling streams of the forest. Sounds in the wild are so satisfying. Crickets steady songs make the forest peaceful. However, when a macho predator like me lives in the forest; it is a lot more serene, quiet, and lonesome anyway. I am a feared predator, who packs quite a wallop. 
Boa Constrictors are feared, but I go beyond that. Far from mediocre. Other predators do not compare to me, because I am simply the best.    ''';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menupage(),
    );
  }
}

