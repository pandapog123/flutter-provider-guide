import 'dart:async';

StreamController<int> counterStreamController = StreamController();

Stream<int> counterStream = counterStreamController.stream.asBroadcastStream();

int _counter = 0;

void setCount(int Function(int) count) {
  _counter = count(_counter);

  counterStreamController.sink.add(_counter);
}
