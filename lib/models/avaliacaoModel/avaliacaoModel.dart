import 'package:cloud_firestore/cloud_firestore.dart';

class Avaliacaomodel {
  String id;
  Timestamp data;
  Map<String, dynamic> avaliFisica;
  Map<String, dynamic> habitosVida;
  List<Map<String, dynamic>> avaliFlex;
  List<Map<String, dynamic>> avaliForca;
  Avaliacaomodel({
    required this.id,
    required this.data,
    required this.avaliFisica,
    required this.habitosVida,
    required this.avaliFlex,
    required this.avaliForca,
  });
}
