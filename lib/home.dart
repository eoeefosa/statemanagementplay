import 'package:flutter/material.dart';
import 'screens/screens.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/OnStatefullhompage");
                },
                child: const Text(
                  "Statefullhomepage",
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
      routes: {
        "/OnStatefullhompage": (context) => const StatefulHomepage(),
        "/OnSimplehomepage": (context) => const Simplehomepage(),
      },
    );
  }
}
