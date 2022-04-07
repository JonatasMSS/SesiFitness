import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/models/dayModel/dayModel.dart';
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
}
