import 'package:flutter/material.dart';
import 'package:qazo_nomozlar/routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: MyRoutes.instance.onGenerateRoute,
      initialRoute: '/splash',
    );
  }
}
