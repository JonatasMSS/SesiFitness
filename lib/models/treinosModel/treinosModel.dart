import 'dart:convert';

class TreinosModel {
  String tituloTreino;
  String repTreino;
  String id;
  String diaId;
  TreinosModel({
    required this.tituloTreino,
    required this.repTreino,
    required this.id,
    required this.diaId,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'tituloTreino': tituloTreino});
    result.addAll({'repTreino': repTreino});
    result.addAll({'id': id});
    result.addAll({'diaId': diaId});

    return result;
  }

  factory TreinosModel.fromMap(Map<String, dynamic> map) {
    return TreinosModel(
      tituloTreino: map['tituloTreino'] ?? '',
      repTreino: map['repTreino'] ?? '',
      id: map['id'] ?? '',
      diaId: map['diaId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TreinosModel.fromJson(String source) =>
      TreinosModel.fromMap(json.decode(source));
}
