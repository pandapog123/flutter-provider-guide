import 'package:flutter/material.dart'
    show
        BottomNavigationBar,
        BottomNavigationBarItem,
        BuildContext,
        MaterialApp,
        Scaffold,
        State,
        Text,
        AppBar,
        StatefulWidget,
        StatelessWidget,
        ThemeData,
        Widget,
        Color,
        Colors,
        ColorScheme;
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_provider_guide/models/route.dart';
import 'package:flutter_provider_guide/state/color.dart';
import 'package:flutter_provider_guide/state/counter.dart';
import 'package:flutter_provider_guide/state/router.dart';
import 'package:flutter_provider_guide/utils/colors.dart';
import "package:provider/provider.dart";

class RootState extends StatelessWidget {
  const RootState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider(
          create: (context) => counterStream,
          initialData: 0,
        ),
        StreamProvider(
          create: (context) => routerStream,
          initialData: initialRoute,
        ),
        StreamProvider(
          create: (context) => colorStream,
          initialData: colorStringToColor.entries.first.value,
        )
      ],
      builder: (context, child) {
        return const Root();
      },
    );
  }
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    Color currentColor = Provider.of<Color>(context);

    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: currentColor,
      ),
      home: const RootScaffold(),
    );
  }
}

class RootScaffold extends StatefulWidget {
  const RootScaffold({super.key});

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  @override
  Widget build(BuildContext context) {
    Route route = Provider.of<Route>(context);

    return Scaffold(
      appBar: AppBar(
        actions: route.menuItems,
        title: Text(route.title),
        centerTitle: false,
      ),
      body: route.widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: setRoute,
        currentIndex: getCurrentRoutes().indexOf(route),
        items: getCurrentRoutes().map((route) {
          return BottomNavigationBarItem(
            icon: route.icon,
            label: route.title,
          );
        }).toList(),
      ),
    );
  }
}
