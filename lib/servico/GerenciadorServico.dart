import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'GerenciadorServico.g.dart';

@RestApi(baseUrl: "https://us-central1-app-do-aluno-unificado.cloudfunctions.net/")
abstract class GerenciadorServico {
  factory GerenciadorServico(Dio dio, {String? baseUrl}) = _GerenciadorServico;

  @GET('https://testvesti.herokuapp.com/catalog')
  Future<String> pegarDados();
}