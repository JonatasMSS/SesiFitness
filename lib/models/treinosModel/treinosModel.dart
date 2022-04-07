import 'dart:convert';

class TreinosModel {
  String tituloTreino;
  String repTreino;
  String carga;
  String cadencia;
  String descanso;
  String observacao;
  TreinosModel({
    required this.tituloTreino,
    required this.repTreino,
    required this.carga,
    required this.cadencia,
    required this.descanso,
    required this.observacao,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'tituloTreino': tituloTreino});
    result.addAll({'repTreino': repTreino});
    result.addAll({'carga': carga});
    result.addAll({'cadencia': cadencia});
    result.addAll({'descanso': descanso});
    result.addAll({'observacao': observacao});

    return result;
  }

  factory TreinosModel.fromMap(Map<String, dynamic> map) {
    return TreinosModel(
      tituloTreino: map['tituloTreino'] ?? '',
      repTreino: map['repTreino'] ?? '',
      carga: map['carga'] ?? '',
      cadencia: map['cadencia'] ?? '',
      descanso: map['descanso'] ?? '',
      observacao: map['observacao'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TreinosModel.fromJson(String source) =>
      TreinosModel.fromMap(json.decode(source));

  TreinosModel copyWith({
    String? tituloTreino,
    String? repTreino,
    String? carga,
    String? cadencia,
    String? descanso,
    String? observacao,
  }) {
    return TreinosModel(
      tituloTreino: tituloTreino ?? this.tituloTreino,
      repTreino: repTreino ?? this.repTreino,
      carga: carga ?? this.carga,
      cadencia: cadencia ?? this.cadencia,
      descanso: descanso ?? this.descanso,
      observacao: observacao ?? this.observacao,
    );
  }

  @override
  String toString() {
    return 'TreinosModel(tituloTreino: $tituloTreino, repTreino: $repTreino, carga: $carga, cadencia: $cadencia, descanso: $descanso, observacao: $observacao)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TreinosModel &&
        other.tituloTreino == tituloTreino &&
        other.repTreino == repTreino &&
        other.carga == carga &&
        other.cadencia == cadencia &&
        other.descanso == descanso &&
        other.observacao == observacao;
  }

  @override
  int get hashCode {
    return tituloTreino.hashCode ^
        repTreino.hashCode ^
        carga.hashCode ^
        cadencia.hashCode ^
        descanso.hashCode ^
        observacao.hashCode;
  }
}
