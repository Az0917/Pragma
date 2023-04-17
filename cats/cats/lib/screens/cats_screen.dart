import 'package:cats/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../models/breed.dart';
import '../providers/cat_provider.dart';
import '../providers/imagen_provider.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final catsProvider = Provider.of<CatProvider>(context);
    List<Breed> gatos = catsProvider.breeds;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: gatos.length,
        itemBuilder: ((context, index) {
          return CatCardScreen(
          image: gatos[index].reference_image_id , nombre: gatos[index].name, origen: gatos[index].origin, inteli: gatos[index].intelligence);
          } )
        )
      
    );
  }
}