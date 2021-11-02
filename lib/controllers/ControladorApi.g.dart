// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControladorApi.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControladorApi on _ControladorApiBase, Store {
  final _$retornoAtom = Atom(name: '_ControladorApiBase.retorno');

  @override
  dynamic get retorno {
    _$retornoAtom.reportRead();
    return super.retorno;
  }

  @override
  set retorno(dynamic value) {
    _$retornoAtom.reportWrite(value, super.retorno, () {
      super.retorno = value;
    });
  }

  final _$carregandoRequestAtom =
      Atom(name: '_ControladorApiBase.carregandoRequest');

  @override
  bool? get carregandoRequest {
    _$carregandoRequestAtom.reportRead();
    return super.carregandoRequest;
  }

  @override
  set carregandoRequest(bool? value) {
    _$carregandoRequestAtom.reportWrite(value, super.carregandoRequest, () {
      super.carregandoRequest = value;
    });
  }

  final _$tamanhoListaAtom = Atom(name: '_ControladorApiBase.tamanhoLista');

  @override
  int get tamanhoLista {
    _$tamanhoListaAtom.reportRead();
    return super.tamanhoLista;
  }

  @override
  set tamanhoLista(int value) {
    _$tamanhoListaAtom.reportWrite(value, super.tamanhoLista, () {
      super.tamanhoLista = value;
    });
  }

  final _$auxiliarAtom = Atom(name: '_ControladorApiBase.auxiliar');

  @override
  List<dynamic>? get auxiliar {
    _$auxiliarAtom.reportRead();
    return super.auxiliar;
  }

  @override
  set auxiliar(List<dynamic>? value) {
    _$auxiliarAtom.reportWrite(value, super.auxiliar, () {
      super.auxiliar = value;
    });
  }

  final _$exibeAgoraAtom = Atom(name: '_ControladorApiBase.exibeAgora');

  @override
  bool get exibeAgora {
    _$exibeAgoraAtom.reportRead();
    return super.exibeAgora;
  }

  @override
  set exibeAgora(bool value) {
    _$exibeAgoraAtom.reportWrite(value, super.exibeAgora, () {
      super.exibeAgora = value;
    });
  }

  final _$quantidadeAchadaAtom =
      Atom(name: '_ControladorApiBase.quantidadeAchada');

  @override
  int get quantidadeAchada {
    _$quantidadeAchadaAtom.reportRead();
    return super.quantidadeAchada;
  }

  @override
  set quantidadeAchada(int value) {
    _$quantidadeAchadaAtom.reportWrite(value, super.quantidadeAchada, () {
      super.quantidadeAchada = value;
    });
  }

  final _$auxAtom = Atom(name: '_ControladorApiBase.aux');

  @override
  List<dynamic> get aux {
    _$auxAtom.reportRead();
    return super.aux;
  }

  @override
  set aux(List<dynamic> value) {
    _$auxAtom.reportWrite(value, super.aux, () {
      super.aux = value;
    });
  }

  final _$textoAtom = Atom(name: '_ControladorApiBase.texto');

  @override
  String get texto {
    _$textoAtom.reportRead();
    return super.texto;
  }

  @override
  set texto(String value) {
    _$textoAtom.reportWrite(value, super.texto, () {
      super.texto = value;
    });
  }

  @override
  String toString() {
    return '''
retorno: ${retorno},
carregandoRequest: ${carregandoRequest},
tamanhoLista: ${tamanhoLista},
auxiliar: ${auxiliar},
exibeAgora: ${exibeAgora},
quantidadeAchada: ${quantidadeAchada},
aux: ${aux},
texto: ${texto}
    ''';
  }
}
