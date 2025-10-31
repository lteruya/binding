import 'package:get/get.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Carrega o HomeController na memória "preguiçosamente" (só quando for usado)
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
