import 'package:e_commerceui/appData/appData.locator.dart';
import 'package:e_commerceui/appData/appData.router.dart';
import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/cupertino.dart';

void main()async {
  await setupLocator();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
      debugShowCheckedModeBanner: false,
       navigatorKey: StackedService.navigatorKey,
       onGenerateRoute: StackedRouter().onGenerateRoute,
      // home: HomeView (),
    );
  }
}