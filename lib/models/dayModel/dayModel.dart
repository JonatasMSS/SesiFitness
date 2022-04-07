import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

class DayModel {
  String segunda;
  String terca;
  String quarta;
  String quinta;
  String sexta;
  String sabado;
  DayModel({
    required this.segunda,
    required this.terca,
    required this.quarta,
    required this.quinta,
    required this.sexta,
    required this.sabado,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'segunda': segunda});
    result.addAll({'terca': terca});
    result.addAll({'quarta': quarta});
    result.addAll({'quinta': quinta});
    result.addAll({'sexta': sexta});
    result.addAll({'sabado': sabado});

    return result;
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    return DayModel(
      segunda: map['segunda'] ?? '',
      terca: map['terca'] ?? '',
      quarta: map['quarta'] ?? '',
      quinta: map['quinta'] ?? '',
      sexta: map['sexta'] ?? '',
      sabado: map['sabado'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DayModel.fromJson(String source) =>
      DayModel.fromMap(json.decode(source));

  DayModel copyWith({
    String? segunda,
    String? terca,
    String? quarta,
    String? quinta,
    String? sexta,
    String? sabado,
  }) {
    return DayModel(
      segunda: segunda ?? this.segunda,
      terca: terca ?? this.terca,
      quarta: quarta ?? this.quarta,
      quinta: quinta ?? this.quinta,
      sexta: sexta ?? this.sexta,
      sabado: sabado ?? this.sabado,
    );
  }

  @override
  String toString() {
    return 'DayModel(segunda: $segunda, terca: $terca, quarta: $quarta, quinta: $quinta, sexta: $sexta, sabado: $sabado)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DayModel &&
        other.segunda == segunda &&
        other.terca == terca &&
        other.quarta == quarta &&
        other.quinta == quinta &&
        other.sexta == sexta &&
        other.sabado == sabado;
  }

  @override
  int get hashCode {
    return segunda.hashCode ^
        terca.hashCode ^
        quarta.hashCode ^
        quinta.hashCode ^
        sexta.hashCode ^
        sabado.hashCode;
  }
}
