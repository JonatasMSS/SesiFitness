import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

abstract class IUserAuth {
  Future<List<AlunoModel>> findAllAlunos();
}
