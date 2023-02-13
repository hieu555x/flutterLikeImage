import 'package:flutter/material.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 92,
        title: const Text(
          "IMAGE LIKE APP",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 232, 142, 53),
                  Color.fromARGB(255, 247, 227, 22),
                ]),
          ),
        ),
      ),
      body: const Scaffold(),
    );
  }
}
