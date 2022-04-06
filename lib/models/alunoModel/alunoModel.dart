import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

import '../treinosModel/treinosModel.dart';

class AlunoModel {
  String nome;
  String cpf;
  String id;
  String dataNasci;
  String dataMatric;
  String lastPay;

  AlunoModel({
    required this.nome,
    required this.cpf,
    required this.id,
    required this.dataNasci,
    required this.dataMatric,
    required this.lastPay,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'id': id,
      'dataNasci': dataNasci,
      'dataMatric': dataMatric,
      'lastPay': lastPay,
    };
  }

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
      nome: map['nome'] ?? '',
      cpf: map['cpf'] ?? '',
      id: map['id'] ?? '',
      dataNasci: map['dataNasci'] ?? '',
      dataMatric: map['dataMatric'] ?? '',
      lastPay: map['lastPay'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoModel.fromJson(String source) =>
      AlunoModel.fromMap(json.decode(source));

  AlunoModel copyWith({
    String? nome,
    String? cpf,
    String? id,
    String? dataNasci,
    String? dataMatric,
    String? lastPay,
  }) {
    return AlunoModel(
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      id: id ?? this.id,
      dataNasci: dataNasci ?? this.dataNasci,
      dataMatric: dataMatric ?? this.dataMatric,
      lastPay: lastPay ?? this.lastPay,
    );
  }

  @override
  String toString() {
    return 'AlunoModel(nome: $nome, cpf: $cpf, id: $id, dataNasci: $dataNasci, dataMatric: $dataMatric, lastPay: $lastPay)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AlunoModel &&
        other.nome == nome &&
        other.cpf == cpf &&
        other.id == id &&
        other.dataNasci == dataNasci &&
        other.dataMatric == dataMatric &&
        other.lastPay == lastPay;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cpf.hashCode ^
        id.hashCode ^
        dataNasci.hashCode ^
        dataMatric.hashCode ^
        lastPay.hashCode;
  }
}
