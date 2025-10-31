import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  // A UI simplesmente "pega" a instância que o Binding criou
  final HomeController controller = Get.find<HomeController>();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contador com Binding (GetX)")),
      body: Center(
        // Obx "observa" as variáveis reativas (o .obs) e se reconstrói
        child: Obx(() {
          return Text(
            'Contagem: ${controller.count.value}',
            style: Theme.of(context).textTheme.headlineMedium,
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment, // Chama o método do controller
        child: Icon(Icons.add),
      ),
    );
  }
}
