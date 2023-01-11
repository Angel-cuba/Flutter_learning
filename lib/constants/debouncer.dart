import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Timer? _timer;

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(const Duration(milliseconds: 900), action);
  }
}
