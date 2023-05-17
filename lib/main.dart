import 'package:flutter/material.dart' show runApp, Icon, Icons;
import 'package:flutter_provider_guide/components/editor.dart';
import 'package:flutter_provider_guide/components/home.dart';
import 'package:flutter_provider_guide/models/route.dart';
import 'package:flutter_provider_guide/root.dart';
import 'package:flutter_provider_guide/state/color.dart';
import 'package:flutter_provider_guide/state/router.dart';

void main() {
  createRoutes([
    Route(
      widget: const HomeWidget(),
      title: "Home",
      icon: const Icon(Icons.home),
    ),
    Route(
      widget: const EditorWidget(),
      title: "Editor",
      icon: const Icon(Icons.edit),
    ),
  ]);

  runApp(const RootState());
}
