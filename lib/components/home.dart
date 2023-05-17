import 'package:flutter/material.dart';
import 'package:flutter_provider_guide/utils/colors.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    int count = Provider.of<int>(context);
    Color color = Provider.of<Color>(context);

    String currentColorName = colorStringToColor.entries
        .firstWhere((element) => element.value == color)
        .key
        .toUpperCase();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Count: $count',
            style: const TextStyle(fontSize: 24),
          ),
          Text(
            'Color: $currentColorName',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
