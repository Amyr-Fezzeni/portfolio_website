import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

class StateProvider with ChangeNotifier {
  bool darkMode = false;
  var text18 = text18black;
  var title = titleblack;
  var bgcolor = bgColor;
  var secondColor = btnColor;
  var secondTitle = titleBlue;
  final ScrollController controller = ScrollController();
  setCont(int index) {
    controller.animateTo(index.toDouble(),
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    
  }

  changeDarkMode(b) {
    if (!b) {
      text18 = text18black;
      bgcolor = bgColor;
      secondColor = btnColor;
      title = titleblack;
      secondTitle = titleBlue;
    } else {
      text18 = text18white;
      bgcolor = darkBgColor;
      secondColor = btnColor;
      title = titleWhite;
      secondTitle = titleBlue;
    }
    darkMode = b;
    print(darkMode);
    notifyListeners();
  }
}
