import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Simplehomepage extends StatelessWidget {
  const Simplehomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello, Name"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextFormField(
          onChanged: print,
        ).paddingSymmetric(horizontal: 20),
        TextButton(
          onPressed: () => print('name, button'),
          child: const Text('I have entered my name'),
        )
      ]),
    );
  }
}
