import 'package:desafios_comida/Inicial/CartScreen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.red[700],
        //primarySwatch: Colors.blue,
      ),
      home: CartScreen()
    );
  }
}

