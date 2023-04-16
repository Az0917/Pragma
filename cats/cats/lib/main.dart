import 'package:cats/providers/cat_provider.dart';
import 'package:cats/screens/cats_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp( AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => CatProvider(), lazy: false,)
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catbreeds',
      initialRoute: 'home',
      routes: {
        'home':(_)=>CatsScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


