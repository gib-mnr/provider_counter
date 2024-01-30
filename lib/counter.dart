
import 'package:flutter/material.dart';

/// ChangeNotifier is a simple way to notify listeners (widgets) when a model
/// or state changes.

class Counter with ChangeNotifier {
  int value = 0;

  /// By calling notifyListeners() in the Counter class, all the widgets
  /// that are listening to this provider will rebuild with the new value.
  void increment() {
    value++;
    notifyListeners();
  }
}