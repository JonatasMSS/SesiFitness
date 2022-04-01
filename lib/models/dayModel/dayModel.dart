import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

class DayModel {
  String id;
  String alunoId;
  String diaSemana;
  List<TreinosModel> treinosDia;
  DayModel({
    required this.id,
    required this.alunoId,
    required this.diaSemana,
    required this.treinosDia,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'alunoId': alunoId});
    result.addAll({'diaSemana': diaSemana});
    result.addAll({'treinosDia': treinosDia.map((x) => x.toMap()).toList()});

    return result;
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    return DayModel(
      id: map['id'] ?? '',
      alunoId: map['alunoId'] ?? '',
      diaSemana: map['diaSemana'] ?? '',
      treinosDia: List<TreinosModel>.from(
          map['treinosDia']?.map((x) => TreinosModel.fromMap(x)) ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory DayModel.fromJson(String source) =>
      DayModel.fromMap(json.decode(source));

  DayModel copyWith({
    String? id,
    String? alunoId,
    String? diaSemana,
    List<TreinosModel>? treinosDia,
  }) {
    return DayModel(
      id: id ?? this.id,
      alunoId: alunoId ?? this.alunoId,
      diaSemana: diaSemana ?? this.diaSemana,
      treinosDia: treinosDia ?? this.treinosDia,
    );
  }

  @override
  String toString() {
    return 'DayModel(id: $id, alunoId: $alunoId, diaSemana: $diaSemana, treinosDia: $treinosDia)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is DayModel &&
        other.id == id &&
        other.alunoId == alunoId &&
        other.diaSemana == diaSemana &&
        listEquals(other.treinosDia, treinosDia);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        alunoId.hashCode ^
        diaSemana.hashCode ^
        treinosDia.hashCode;
  }
}
