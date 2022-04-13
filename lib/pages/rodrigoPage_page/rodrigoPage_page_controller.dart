import 'package:get/get.dart';
import 'package:sesi_fitness/models/professorModel/ProfessorModel.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class RodrigoPagePageController extends GetxController {
  final List<ProfessorModel> professores = [];
  final DataAuth _dataAuth;

  RodrigoPagePageController(this._dataAuth);
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getAllProfessores() async {
    final _dataResponse = await _dataAuth.findAllProfessores();

    if (professores.isEmpty) {
      professores.addAll(_dataResponse);
    } else {
      professores.clear();
      professores.addAll(_dataResponse);
    }
  }
}
