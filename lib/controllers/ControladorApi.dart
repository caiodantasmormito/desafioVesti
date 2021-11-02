import 'dart:convert';

import 'package:appdesafio/servico/GerenciadorServico.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'ControladorApi.g.dart';

class ControladorApi = _ControladorApiBase with _$ControladorApi;

abstract class _ControladorApiBase with Store {
  var _mService = GetIt.I.get<GerenciadorServico>();


  @observable
  var retorno;

  @observable 
  bool ? carregandoRequest = true; 
  @observable 
  int tamanhoLista = 0; 
  @observable
   List<dynamic> ? auxiliar = [];


  @observable
  bool exibeAgora = true;
  @observable
  int quantidadeAchada = 0;

  @observable
  List<dynamic> aux = [];


  @observable
  String texto = "" ;
  void consultarDados({Function()? sucesso, Function()? carregando}) {
    carregando?.call();
   carregandoRequest = true;


    _mService.pegarDados().then((resultado) {
    
       retorno = jsonDecode(resultado);
     print(retorno);
     print("total : ${retorno["data"].length}");
      
    tamanhoLista = retorno["data"].length;
     carregandoRequest =  false;
    }).catchError((onError) {
     
         print(onError);
      
    });
  }

 
}
