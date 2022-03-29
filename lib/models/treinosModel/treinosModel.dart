import 'dart:convert';

class TreinosModel {
  String tituloTreino;
  String repTreino;
  String id;
  String alunoId;
  TreinosModel({
    required this.tituloTreino,
    required this.repTreino,
    required this.id,
    required this.alunoId,
  });

  Map<String, dynamic> toMap() {
    return {
      'tituloTreino': tituloTreino,
      'repTreino': repTreino,
      'id': id,
      'alunoId': alunoId,
    };
  }

  factory TreinosModel.fromMap(Map<String, dynamic> map) {
    return TreinosModel(
      tituloTreino: map['tituloTreino'] ?? '',
      repTreino: map['repTreino'] ?? '',
      id: map['id'] ?? '',
      alunoId: map['alunoId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TreinosModel.fromJson(String source) =>
      TreinosModel.fromMap(json.decode(source));
}
