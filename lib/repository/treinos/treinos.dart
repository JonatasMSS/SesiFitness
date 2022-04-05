import 'package:flutter/material.dart';
import 'package:sesi_fitness/models/checkboxModel.dart';

class Treinos {
  List<Checkboxmodel> getTreinosPeito() {
    List<String> _dataString = [
      "Flexão de braço",
      "Voador Frente ",
      "Crucifixo Maquina",
      "Crucifixo 45° ",
      "Crucifixo ",
      "Crucifixo cross",
      "Supino reto",
      "Supino declinado",
      "Supino 45°",
      "Supino reto com halter",
      "Supino 45° com halter",
      "Supino vertical",
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));
    return _treinos;
  }

  List<Checkboxmodel> getTreinosCostas() {
    List<String> _dataString = [
      'Elevação lateral',
      'Elevação lateral no cross',
      'Elevação frontal no cross',
      'Elevação frontal',
      'Desenvolvimento Maquina',
      'Desenvolvimento com halter',
      'Desenvolvimento barra',
      'Desenvolvimento Arnold',
      'Crucifixo inverso ',
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));
    return _treinos;
  }

  List<Checkboxmodel> getTreinosPerna() {
    List<String> _dataString = [
      'Agachamento ',
      'Agachamento Sumô',
      'Agachamento com salto',
      'Agachamento no smtih',
      'Leg 45°',
      'Leg Regulavel',
      'Leg. 90°',
      'Levantamento terra',
      'Stiff',
      'Cadeira extensora',
      'Cadeira flexora',
      'Cadeira abdutora',
      'Cadeira adutora',
      'Elevação pelvica',
      'Mesa flexora',
      'Passada',
      'Avanço',
      'Panturrilha na escada',
      'Panturrilha na leg',
      'Sentadilha',
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => (Checkboxmodel(texto: _dataString[index])));
    return _treinos;
  }

  List<Checkboxmodel> getTreinosBiceps() {
    List<String> _dataString = [
      'Rosca Bíceps com halter',
      'Rosca Bíceps com halter martelo',
      'Rosca Bíceps com barra',
      'Rosca Bíceps barra',
      'Rosca Bíceps pegada pronada',
      'Rosca 21',
      'Rosca 45°',
      'Rosca Bíceps cross',
      'Rosca Bíceps cross pegada pronada',
      'Rosca Bíceps barra H',
      'Rosca Bíceps barra W ',
      'Rosca Bíceps pegada dupla cross',
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));
    return _treinos;
  }

  List<Checkboxmodel> getTreinosTriceps() {
    List<String> _dataString = [
      'Tríceps francês ',
      'Tríceps testa barra',
      'Tríceps testa cross com barra',
      'Tríceps testa cross corda',
      'Tríceps cross polia alta',
      'Tríceps corda',
      'Tríceps coice halter',
      'Tríceps coice cross',
      'Tríceps banco'
    ];

    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));

    return _treinos;
  }

  List<Checkboxmodel> getTreinosCore() {
    List<String> _dataString = [
      'Abdominal supra mãos no peito',
      'Abdominal infra',
      'Abdominal remador',
      'Abdominal banco',
      'Abdominal rolo',
      'Prancha ',
      'Prancha com bola',
      'Banco romano'
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));
    return _treinos;
  }

  List<Checkboxmodel> getTreinosAerobio() {
    List<String> _dataString = [
      'Esteira',
      'Elíptico',
      'Bicicleta',
      'Corda',
      'Burp',
      'Corda naval',
      'Corrida estacionada',
      'Polichinelo',
      'Subida e decida do step'
    ];
    List<Checkboxmodel> _treinos = List.generate(_dataString.length,
        (index) => Checkboxmodel(texto: _dataString[index]));
    return _treinos;
  }
}
