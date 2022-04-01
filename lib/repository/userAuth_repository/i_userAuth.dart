import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';

abstract class IUserAuth {
  Future<List<AlunoModel>> findAllAlunos();
  Future<List<DayModel>> findAllTreinosById(String id);
}
