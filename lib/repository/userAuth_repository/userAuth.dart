import 'dart:convert';

import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';

import '../userAuth_repository/i_userAuth.dart';
import 'package:http/http.dart' as http;

class Userauth implements IUserAuth {
  @override
  Future<List<AlunoModel>> findAllAlunos() async {
    final url =
        Uri.parse("https://620be58cab956ad80565da41.mockapi.io/api/http/aluno");

    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map(
          (dados) => AlunoModel.fromMap(dados),
        )
        .toList();
  }

  @override
  Future<List<DayModel>> findAllTreinosByIdAndName(String id) async {
    final url = Uri.parse(
        "https://620be58cab956ad80565da41.mockapi.io/api/http/aluno/$id/dia");
    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map((dados) => DayModel.fromMap(dados)).toList();
  }
}
