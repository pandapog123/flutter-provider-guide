import 'dart:async';

import 'package:flutter/material.dart';

StreamController<Color> colorStreamController = StreamController();

Stream<Color> colorStream = colorStreamController.stream.asBroadcastStream();

void setColor(Color color) {
  colorStreamController.sink.add(color);
}
