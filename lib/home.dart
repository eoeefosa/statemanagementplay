import 'package:flutter/material.dart';
import 'screens/screens.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Homepager(),
      routes: {
        "/OnStatefullhompage": (context) => const StatefulHomepage(),
        "/OnSimplehomepage": (context) => const Simplehomepage(),
      },
    );
  }
}

class Homepager extends StatelessWidget {
  const Homepager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/OnStatefullhompage");
                  },
                  child: const Text(
                    "Statefullhomepage",
                    textAlign: TextAlign.center,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
