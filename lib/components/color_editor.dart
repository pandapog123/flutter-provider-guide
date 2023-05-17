import 'package:flutter/material.dart';
import 'package:flutter_provider_guide/state/color.dart';
import 'package:flutter_provider_guide/utils/colors.dart';

class ColorEditorWidget extends StatefulWidget {
  const ColorEditorWidget({super.key});

  @override
  State<ColorEditorWidget> createState() => _ColorEditorWidgetState();
}

class _ColorEditorWidgetState extends State<ColorEditorWidget> {
  List<Color> currentColors = colorStringToColor.values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Edit Current Color"),
      ),
      body: ListView.builder(
        itemCount: currentColors.length,
        itemBuilder: (context, index) {
          Color color = currentColors[index];

          return Material(
            color: color,
            child: InkWell(
              onTap: () {
                setColor(color);

                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  colorStringToColor.keys.elementAt(index).toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
