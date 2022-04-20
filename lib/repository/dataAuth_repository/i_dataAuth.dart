import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/avaliacaoModel/avaliacaoModel.dart';
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
  Future<List<AvaliacaoModel>> getLastAvaliacaoFromAluno(String id);
  Future<List<AvaliacaoModel>> getAllAvaliacoesFromAluno(String id);
  Future<void> setAlunoAvaliacao(
    String id,
    Map<String, dynamic> avaliFisica,
    List<Map<String, dynamic>> avaliForca,
    Map<String, dynamic> flex,
    Map<String, dynamic> habitosVida,
  );
}
