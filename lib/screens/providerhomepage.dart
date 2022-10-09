import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Providerhomepage extends StatelessWidget {
  Providerhomepage({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Stated(),
      builder: (context, index) {
        return Scaffold(
          appBar: AppBar(
            title: Consumer<Stated>(builder: (context, value, child) => Text("Hello, ${value.name}")),
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(controller: _controller),
            TextButton(
              onPressed: () => Provider.of<Stated>(context, listen: false).setname(_controller.text),
              child: const Text('I have entereed my name'),
            )
          ]),
        );
      },
    );
  }
}

class Stated extends ChangeNotifier with DiagnosticableTreeMixin {
  String name = "john Doe";
  void setname(String newname) {
    name = newname;
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('count', name));
  }
}
