import 'package:flutter/material.dart';
import 'package:flutter_getx_number_trivia/app/core/di/dependencies_binding.dart';
import 'package:get/get.dart';

import 'app/core/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependenciesBinding().dependencies();
  runApp(
    GetMaterialApp(
      title: "Getx - Number Trivia",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
