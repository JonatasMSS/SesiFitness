import 'package:get/get.dart';
import 'package:sesi_fitness/repository/treinos/treinos.dart';

class AlunoDetailsController extends GetxController {
  final RxList lista = ["nome 1", "nome 2", "nome 3"].obs;

  final Map<String, String> dataPage = Map.from(Get.arguments);
}
