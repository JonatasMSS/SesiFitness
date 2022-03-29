import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

import '../userAuth_repository/i_userAuth.dart';
import 'package:http/http.dart' as http;

class Userauth implements IUserAuth {
  @override
  Future<List<AlunomModel>> findAllAlunos() async {}
}
