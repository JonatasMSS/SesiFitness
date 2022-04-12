import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/i_dataAuth.dart';

class DataAuth implements IDataAuth {
  final _dataCollection = FirebaseFirestore.instance.collection('Alunos');

  //Busca todos os dados dos alunos

  @override
  Future<List<AlunoModel>> findAllAlunos() async {
    final responseResult = await _dataCollection.get();
    return responseResult.docs
        .map((doc) => AlunoModel.fromMap(doc.data()))
        .toList();
  }

  //Busca treinos de acordo com o ID dos alunos

  @override
  Future<List<TreinosModel>> findTreinosByIdAndDay(
      String id, String day) async {
    final responseResult = await _dataCollection
        .doc(id)
        .collection('diasSemana')
        .doc(day)
        .collection('treinos')
        .get();
    return responseResult.docs
        .map((doc) => TreinosModel(
            tituloTreino: doc.id,
            repTreino: doc['repTreino'],
            carga: doc['carga'],
            cadencia: doc['cadencia'],
            descanso: doc['descanso'],
            observacao: doc['observacao']))
        .toList();
  }

  @override
  Future<List<DayModel>> findAllTreinos(String id) async {
    List<DayModel> data = [];
    final _dataLength = FirebaseFirestore.instance
        .collection('Alunos')
        .doc(id)
        .collection('diasSemana');

    final _diasSemanaDocs =
        await _dataLength.get(); //Coleta todos os documentos do dia da semana.
    //Resultado: [instance, instance, ...]
    for (var dia in _diasSemanaDocs.docs) {
      final _treinos =
          await _dataLength.doc(dia.id).collection('treinos').get();

      data.add(DayModel(id: dia.id, listaTreinos: _treinos.docs));
    }

    return data;
  }

  @override
  Future<List<ProfessorModel>> findAllProfessores() async {
    final _dataCollection =
        await FirebaseFirestore.instance.collection('Professores').get();
    return _dataCollection.docs
        .map(
          (doc) => ProfessorModel(
            cpf: doc['cpf'],
            listaAlunos: doc['alunos'],
            nome: doc['nome'],
          ),
        )
        .toList();
  }

  @override
  Future<AlunoModel> findAlunoById(String id) async {
    final _responseResult = await _dataCollection.doc(id).get();
    return AlunoModel.fromMap(_responseResult.data()!);
  }

  @override
  Future<void> setTreinosFromIdAlunoAndDay(
    String id,
    String dia,
    List<dynamic> listaTreinos,
    Map<String, dynamic> dataTreino,
  ) async {
    final _dataResponse = _dataCollection
        .doc(id)
        .collection('diasSemana')
        .doc(dia)
        .collection('treinos');
    for (var treinoNome in listaTreinos) {
      await _dataResponse.doc(treinoNome).set(
            dataTreino,
            SetOptions(merge: true),
          );
    }
  }
}
