import 'package:flutter/cupertino.dart';

class StateProvider with ChangeNotifier {
  bool darkMode = false;
  final ScrollController controller = ScrollController();
  setCont(index) {
    controller.animateTo(index,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    ChangeNotifier;
  }
}
