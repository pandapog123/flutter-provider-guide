import 'package:flutter/material.dart';
import 'package:flutter_provider_guide/components/color_editor.dart';
import 'package:flutter_provider_guide/components/number_editor.dart';
import 'package:flutter_provider_guide/state/color.dart';
import 'package:provider/provider.dart';

class EditorWidget extends StatefulWidget {
  const EditorWidget({super.key});

  @override
  State<EditorWidget> createState() => _EditorWidgetState();
}

class _EditorWidgetState extends State<EditorWidget> {
  @override
  Widget build(BuildContext context) {
    Color currentColor = Provider.of<Color>(context);

    return Column(
      children: [
        Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorEditorWidget();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Text(
                    "Edit Current Color",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  allowSnapshotting: false,
                  builder: (context) {
                    return const NumberEditorWidget();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Text(
                    "Edit Current Number",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
