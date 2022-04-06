import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';

abstract class IDataAuth {
  Future<List<AlunoModel>> findAllAlunos();
}
