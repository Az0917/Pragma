import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cat_provider.dart';

class CatCardScreen extends StatelessWidget {
   
  const CatCardScreen({Key? key, required this.image, required this.nombre, required this.origen, required this.inteli}) : super(key: key);
  
  final String image;
  final String nombre;
  final String origen;
  final int inteli;

  

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage("https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/SQT6VSTKY5ALBBK4QFI22JCWNY.jpg"))
        ],
      ),
    );
  }
}