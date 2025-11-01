import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_view.dart';
import 'home_binding.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeBinding(), // <--- AQUI ESTÁ A MÁGICA DO BINDING
        ),
      ],
    );
  }
}
