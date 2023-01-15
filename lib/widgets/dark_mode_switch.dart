import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var s = context.read<StateProvider>();
    return Positioned(
      top: 20,
      left: 20,
      child: CupertinoSwitch(
          value: state.darkMode,
          activeColor: btnColor,
          onChanged: (b) {
            s.changeDarkMode(b);
          }),
    );
  }
}
