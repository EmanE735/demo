import 'package:flutter/material.dart';
import 'package:flutter_application_2/add_delet.dart';


void main() {
  runApp(const RouteCources());
}

class RouteCources extends StatelessWidget {
  const RouteCources({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: AddAndDelet(),

    );
  }
}