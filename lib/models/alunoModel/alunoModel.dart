import 'dart:convert';

import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

import '../treinosModel/treinosModel.dart';

class AlunoModel {
  String nome;
  String cpf;
  String id;
  List<DayModel> diaTreino;
  AlunoModel({
    required this.nome,
    required this.cpf,
    required this.id,
    required this.diaTreino,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nome': nome});
    result.addAll({'cpf': cpf});
    result.addAll({'id': id});
    result.addAll({'diaTreino': diaTreino.map((x) => x.toMap()).toList()});

    return result;
  }

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
      nome: map['nome'] ?? '',
      cpf: map['cpf'] ?? '',
      id: map['id'] ?? '',
      diaTreino:
          List<DayModel>.from(map['diaTreino'].map((x) => DayModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoModel.fromJson(String source) =>
      AlunoModel.fromMap(json.decode(source));
}
