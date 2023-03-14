import 'package:flutter/material.dart';
import 'package:flutterlikeimage/provider/items_provider.dart';
import 'package:provider/provider.dart';

import 'MyHomeApp.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => ItemsProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeApp(),
    );
  }
}
