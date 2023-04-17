import 'package:cats/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cat_provider.dart';
import '../providers/imagen_provider.dart';

class CatCardScreen extends StatelessWidget {
  const CatCardScreen(
      {Key? key,
      required this.image,
      required this.nombre,
      required this.origen,
      required this.inteli})
      : super(key: key);

  final String image;
  final String nombre;
  final String origen;
  final int inteli;
  
  @override
  Widget build(BuildContext context) {
    final imgProvider = Provider.of<ImagenProvider>(context);
    
    return Card(
      child: Column(
        children: [
          Container(
            child: Text(nombre, style: TextStyle(fontSize: 25)),
            alignment: AlignmentDirectional.centerStart,
          ),
          FutureBuilder(
            builder: (context, snapshot) {
              return FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                  "https://cdn2.thecatapi.com/images/O3btzLlsO.png"));
              
              
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
            child: Text(origen, style: TextStyle(fontSize: 19)),
            alignment: AlignmentDirectional.centerStart,
          ),
          Container(
            child: Text(nombre, style: TextStyle(fontSize: 19)),
            alignment: AlignmentDirectional.centerEnd,
          ),],
          )
          
        ],
      ),
    );
  }
}
