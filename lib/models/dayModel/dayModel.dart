import 'dart:convert';

import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

class DayModel {
  String id;
  String alunoId;
  String diaSemana;

  DayModel({
    required this.id,
    required this.alunoId,
    required this.diaSemana,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'alunoId': alunoId});
    result.addAll({'diaSemana': diaSemana});

    return result;
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    return DayModel(
      id: map['id'] ?? '',
      alunoId: map['alunoId'] ?? '',
      diaSemana: map['diaSemana'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DayModel.fromJson(String source) =>
      DayModel.fromMap(json.decode(source));
}
