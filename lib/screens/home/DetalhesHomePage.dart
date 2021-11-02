

import 'package:appdesafio/screens/home/Body.dart';
import 'package:flutter/material.dart';

class DetalhesHomePage extends StatelessWidget {
   final Map<String, dynamic>  ? product;

  const DetalhesHomePage({Key ? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Body(product: product),
    );
  }

  
}
