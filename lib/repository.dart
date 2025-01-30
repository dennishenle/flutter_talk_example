import 'dart:async';

class Repository {
  final StreamController<int> streamController =
      StreamController<int>.broadcast();
}
