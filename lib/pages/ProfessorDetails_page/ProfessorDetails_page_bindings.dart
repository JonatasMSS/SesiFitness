import 'package:get/get.dart';
import './ProfessorDetails_page_controller.dart';

class ProfessorDetailsPageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ProfessorDetailsPageController());
    }
}