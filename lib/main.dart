import 'package:appdesafio/controllers/ControladorApi.dart';
import 'package:appdesafio/rota/routeGenerator.dart';
import 'package:appdesafio/screens/home/homePage.dart';
import 'package:appdesafio/servico/GerenciadorServico.dart';
import 'package:appdesafio/servico/ServiceDioProvider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  var dioConnect = ServiceDioProvider().getDio();
    getIt.registerSingleton<GerenciadorServico>(GerenciadorServico(dioConnect));

    getIt.registerSingleton<ControladorApi>(
      ControladorApi());

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    initialRoute: "/telaBemVindoAoAplicativo",
    
    theme: ThemeData(
      primaryColor: Color.fromRGBO(255, 104, 135, 1),
    ),
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
