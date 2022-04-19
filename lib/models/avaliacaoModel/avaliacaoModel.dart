import 'package:cloud_firestore/cloud_firestore.dart';

class AvaliacaoModel {
  String id;
  dynamic data;
  Map<String, dynamic> avaliFisica;
  Map<String, dynamic> habitosVida;
  Map<String, dynamic> avaliFlex;
  List<dynamic> avaliForca;
  AvaliacaoModel({
    required this.id,
    required this.data,
    required this.avaliFisica,
    required this.habitosVida,
    required this.avaliFlex,
    required this.avaliForca,
  });
}
