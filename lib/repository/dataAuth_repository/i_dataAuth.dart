import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

abstract class IDataAuth {
  Future<List<AlunoModel>> findAllAlunos();
  Future<AlunoModel> findAlunoById(String id);
  Future<List<TreinosModel>> findTreinosByIdAndDay(String id, String day);
  Future<List<DayModel>> findAllTreinos(String id);
  Future<List<ProfessorModel>> findAllProfessores();
  Future<void> setTreinosFromIdAlunoAndDay(String id, String dia,
      List<dynamic> listaTreinos, Map<String, dynamic> dataTreino);
  Future<void> removeTreinoByName(String treinoName, String id, String day);
}
