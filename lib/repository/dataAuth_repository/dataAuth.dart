import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:sesi_fitness/models/alunoModel/alunoModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/i_dataAuth.dart';

class DataAuth implements IDataAuth {
  var _dataCollection = FirebaseFirestore.instance.collection('Alunos');

  @override
  Future<List<AlunoModel>> findAllAlunos() async {
    var responseResult = await _dataCollection.get();
    return responseResult.docs
        .map((doc) => AlunoModel(
            nome: doc['nome'],
            cpf: doc.id,
            id: '',
            dataNasci: doc['dataNasci'],
            dataMatric: doc['dataMatric'],
            lastPay: doc['lastPay']))
        .toList();
  }
}
