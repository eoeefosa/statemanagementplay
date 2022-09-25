import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:get/utils.dart';

class StatefulHomepage extends StatefulWidget {
  const StatefulHomepage({super.key});

  @override
  State<StatefulHomepage> createState() => _StatefulHomepageState();
}

class _StatefulHomepageState extends State<StatefulHomepage> {
  MaterialColor _currentcolor = Colors.green;
  String name = 'john Doe';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: _currentcolor),
      home: Scaffold(
        appBar: AppBar(title: Text('Hello, $name'), backgroundColor: _currentcolor),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
            ).paddingSymmetric(horizontal: 20),
            TextButton(
              onPressed: () => setState(() {
                name = controller.text;
              }),
              child: const Text('I have entered my name'),
            ),
            buildColorPicker(context),
          ],
        ),
      ),
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: BlockPicker(
                      pickerColor: Colors.white,
                      onColorChanged: (color) => setState(() => _currentcolor = MaterialColor(color.value, {
                            50: color,
                            100: color,
                            200: color,
                            300: color,
                            400: color,
                            500: color,
                            600: color,
                            700: color,
                            800: color,
                            900: color,
                          })),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Save'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("select Color"))
      ],
    );
  }
}
