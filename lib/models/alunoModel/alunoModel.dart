import 'dart:convert';

import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

import '../treinosModel/treinosModel.dart';

class AlunoModel {
  String nome;
  String cpf;
  String id;
  List<TreinosModel> treinosAluno;
  AlunoModel({
    required this.nome,
    required this.cpf,
    required this.id,
    required this.treinosAluno,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'id': id,
      'treinosAluno': treinosAluno.map((x) => x.toMap()).toList(),
    };
  }

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
      nome: map['nome'] ?? '',
      cpf: map['cpf'] ?? '',
      id: map['id'] ?? '',
      treinosAluno: List<TreinosModel>.from(
          map['treinosAluno']?.map((x) => TreinosModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoModel.fromJson(String source) =>
      AlunoModel.fromMap(json.decode(source));
}
