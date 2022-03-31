import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

import '../treinosModel/treinosModel.dart';

class AlunoModel {
  String nome;
  String cpf;
  String id;
  String dataNasc;
  String dataMatric;
  String lastPay;
  List<DayModel> diaTreino;

  AlunoModel({
    required this.nome,
    required this.cpf,
    required this.id,
    required this.dataNasc,
    required this.dataMatric,
    required this.lastPay,
    required this.diaTreino,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'id': id,
      'dataNasc': dataNasc,
      'dataMatric': dataMatric,
      'lastPay': lastPay,
      'diaTreino': diaTreino.map((x) => x.toMap()).toList(),
    };
  }

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
      nome: map['nome'] ?? '',
      cpf: map['cpf'] ?? '',
      id: map['id'] ?? '',
      dataNasc: map['dataNasc'] ?? '',
      dataMatric: map['dataMatric'] ?? '',
      lastPay: map['lastPay'] ?? '',
      diaTreino: List<DayModel>.from(
          map['diaTreino']?.map((x) => DayModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoModel.fromJson(String source) =>
      AlunoModel.fromMap(json.decode(source));

  AlunoModel copyWith({
    String? nome,
    String? cpf,
    String? id,
    String? dataNasc,
    String? dataMatric,
    String? lastPay,
    List<DayModel>? diaTreino,
  }) {
    return AlunoModel(
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      id: id ?? this.id,
      dataNasc: dataNasc ?? this.dataNasc,
      dataMatric: dataMatric ?? this.dataMatric,
      lastPay: lastPay ?? this.lastPay,
      diaTreino: diaTreino ?? this.diaTreino,
    );
  }

  @override
  String toString() {
    return 'AlunoModel(nome: $nome, cpf: $cpf, id: $id, dataNasc: $dataNasc, dataMatric: $dataMatric, lastPay: $lastPay, diaTreino: $diaTreino)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is AlunoModel &&
        other.nome == nome &&
        other.cpf == cpf &&
        other.id == id &&
        other.dataNasc == dataNasc &&
        other.dataMatric == dataMatric &&
        other.lastPay == lastPay &&
        listEquals(other.diaTreino, diaTreino);
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cpf.hashCode ^
        id.hashCode ^
        dataNasc.hashCode ^
        dataMatric.hashCode ^
        lastPay.hashCode ^
        diaTreino.hashCode;
  }
}
