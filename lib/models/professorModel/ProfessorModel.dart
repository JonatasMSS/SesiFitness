import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ProfessorModel {
  String cpf;
  List<dynamic> listaAlunos;
  String nome;
  ProfessorModel({
    required this.cpf,
    required this.listaAlunos,
    required this.nome,
  });

  ProfessorModel copyWith({
    String? cpf,
    List<dynamic>? listaAlunos,
    String? nome,
  }) {
    return ProfessorModel(
      cpf: cpf ?? this.cpf,
      listaAlunos: listaAlunos ?? this.listaAlunos,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'cpf': cpf});
    result.addAll({'listaAlunos': listaAlunos});
    result.addAll({'nome': nome});

    return result;
  }

  factory ProfessorModel.fromMap(Map<String, dynamic> map) {
    return ProfessorModel(
      cpf: map['cpf'] ?? '',
      listaAlunos: List<dynamic>.from(map['listaAlunos']),
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfessorModel.fromJson(String source) =>
      ProfessorModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProfessorModel(cpf: $cpf, listaAlunos: $listaAlunos, nome: $nome)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfessorModel &&
        other.cpf == cpf &&
        listEquals(other.listaAlunos, listaAlunos) &&
        other.nome == nome;
  }

  @override
  int get hashCode => cpf.hashCode ^ listaAlunos.hashCode ^ nome.hashCode;
}
