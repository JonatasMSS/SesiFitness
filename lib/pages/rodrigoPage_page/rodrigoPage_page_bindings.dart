import 'package:get/get.dart';
import './rodrigoPage_page_controller.dart';

class RodrigoPagePageBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(RodrigoPagePageController());
    }
}