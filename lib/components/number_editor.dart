import 'package:flutter/material.dart';
import 'package:flutter_provider_guide/state/counter.dart';
import 'package:provider/provider.dart';

class NumberEditorWidget extends StatefulWidget {
  const NumberEditorWidget({super.key});

  @override
  State<NumberEditorWidget> createState() => _NumberEditorWidgetState();
}

class _NumberEditorWidgetState extends State<NumberEditorWidget> {
  @override
  Widget build(BuildContext context) {
    int count = Provider.of<int>(context);
    Color currentColor = Provider.of<Color>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Current Number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: const TextStyle(fontSize: 48),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setCount((count) => count + 1);
                  },
                  icon: const Icon(Icons.add),
                  color: currentColor,
                  iconSize: 36,
                ),
                IconButton(
                  onPressed: () {
                    setCount((count) => count - 1);
                  },
                  icon: const Icon(Icons.remove),
                  color: currentColor,
                  iconSize: 36,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
