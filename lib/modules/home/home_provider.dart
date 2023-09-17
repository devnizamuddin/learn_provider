import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  bool switchValue = false;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void changeSwitchValue(bool value) {
    switchValue = value;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
