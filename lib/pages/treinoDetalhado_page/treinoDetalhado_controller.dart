import 'package:get/get.dart';

class TreinoDetalhadoController extends GetxController {
  // final Map<String, String> dataPage = Map.from(Get.arguments);
  final Map<String, String> dataPage = Map.from(Get.arguments);

  @override
  void onInit() {
    print("Pagina carregada");
    print(dataPage);
    super.onInit();
  }
}
