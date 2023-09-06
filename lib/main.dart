
import 'package:get/get.dart';
import 'res/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: AddOrderView(),
      getPages: AppRoutes.routes(),
    );
  }
}
