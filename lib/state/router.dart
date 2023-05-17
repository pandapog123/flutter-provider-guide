import 'dart:async';
import 'package:flutter/material.dart' show Icon, Icons, Placeholder;
import 'package:flutter_provider_guide/models/route.dart';

StreamController<Route> routerStreamController = StreamController();

Stream<Route> routerStream = routerStreamController.stream.asBroadcastStream();

List<Route> _routes = [];
Route initialRoute = Route(
  widget: Placeholder(),
  icon: const Icon(Icons.home),
  title: "home",
);

void createRoutes(List<Route> routes) {
  _routes = routes;

  initialRoute = _routes[0];
}

void setRoute(int routeIndex) {
  routerStreamController.sink.add(_routes[routeIndex]);
}

List<Route> getCurrentRoutes() {
  return _routes;
}
