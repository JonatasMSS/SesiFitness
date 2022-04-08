import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

abstract class IDataAuth {
  Future<List<AlunoModel>> findAllAlunos();
  Future<List<TreinosModel>> findTreinosByIdAndDay(String id, String day);
  Future<List<DayModel>> findAllTreinos(String id);
}
