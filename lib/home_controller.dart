import 'package:get/get.dart';

class HomeController extends GetxController {
  // .obs torna a variável reativa (observável)
  final count = 0.obs;

  void increment() {
    count.value++;
  }
}
