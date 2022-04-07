import 'package:get/get.dart';
import 'package:sesi_fitness/repository/dataAuth_repository/dataAuth.dart';

class Databindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataAuth(), fenix: true);
  }
}
