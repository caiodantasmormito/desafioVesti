
import 'package:appdesafio/screens/home/TelaHomeScreen.dart';
import 'package:appdesafio/screens/home/homePage.dart';
import 'package:appdesafio/screens/inicialApp/telaBemVindoAoAplicativo.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      

   

     case "/telaHomeScreen":
        return MaterialPageRoute(builder: (_) => TelaHomeScreen());   

      case "/homePage":
        return MaterialPageRoute(builder: (_) => HomePage());       
     case "/telaBemVindoAoAplicativo":
        return MaterialPageRoute(builder: (_) => TelaBemVindoAoAplicativo());       


      
      default:
        return screenNotFound();
    }
  }

  static Route<dynamic> screenNotFound() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Erro de rota"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
