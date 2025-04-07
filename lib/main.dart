import 'package:flutter/material.dart';

import 'package:flutter_1st_project/currency_convertor_material.dart';
//material.dart file from flutter package

void main() {
  runApp(const MyApp());
  //moving one place to another its called navigation iska liye
  //material app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  CurrencyConverterMaterialPage()
    );
  }
}
