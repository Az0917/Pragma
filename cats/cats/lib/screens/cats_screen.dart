import 'package:cats/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../models/breed.dart';
import '../providers/cat_provider.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Breed> gatos = [];
    final catsProvider = Provider.of<CatProvider>(context); 
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          CatCardScreen(image: 'image', nombre: 'nombre', origen: 'origen', inteli: 2)
        ],

      ),
      
    );
  }
}