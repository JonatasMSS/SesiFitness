import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

import '../treinosModel/treinosModel.dart';

class AlunoModel {
  String nome;
  String cpf;
  String nascimento;
  String dataMatric;
  String lastPay;

  AlunoModel({
    required this.nome,
    required this.cpf,
    required this.nascimento,
    required this.dataMatric,
    required this.lastPay,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nome': nome});
    result.addAll({'cpf': cpf});
    result.addAll({'nascimento': nascimento});
    result.addAll({'dataMatric': dataMatric});
    result.addAll({'lastPay': lastPay});

    return result;
  }

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
      nome: map['nome'] ?? '',
      cpf: map['cpf'] ?? '',
      nascimento: map['nascimento'] ?? '',
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
    String? nascimento,
    String? dataMatric,
    String? lastPay,
  }) {
    return AlunoModel(
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      nascimento: nascimento ?? this.nascimento,
      dataMatric: dataMatric ?? this.dataMatric,
      lastPay: lastPay ?? this.lastPay,
    );
  }

  @override
  String toString() {
    return 'AlunoModel(nome: $nome, cpf: $cpf, nascimento: $nascimento, dataMatric: $dataMatric, lastPay: $lastPay)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AlunoModel &&
        other.nome == nome &&
        other.cpf == cpf &&
        other.nascimento == nascimento &&
        other.dataMatric == dataMatric &&
        other.lastPay == lastPay;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cpf.hashCode ^
        nascimento.hashCode ^
        dataMatric.hashCode ^
        lastPay.hashCode;
  }
}
