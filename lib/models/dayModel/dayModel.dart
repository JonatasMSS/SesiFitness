import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:sesi_fitness/models/treinosModel/treinosModel.dart';

class DayModel {
  String id;
  List<QueryDocumentSnapshot<Map<String, dynamic>>> listaTreinos;
  DayModel({
    required this.id,
    required this.listaTreinos,
  });
}
