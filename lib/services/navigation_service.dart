import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:flutter_portfolio_website/services/language_service.dart';
import 'package:flutter_portfolio_website/widgets/bottons.dart';
import 'package:provider/provider.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

Future<dynamic> popup(BuildContext context, String confirmText,
    {String? title,
    String? description,
    Function? confirmFunction,
    bool cancel = true}) {
  var style = context.read<StateProvider>();
  var size = MediaQuery.of(context).size;
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: style.darkMode
              ? const Color.fromARGB(255, 33, 33, 33)
              : Colors.white,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 200),
            // height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      child: Text(
                        title,
                        // maxLines: 2,
                        textAlign: TextAlign.center,
                        style: style.text18.copyWith(fontSize: 22),
                      ),
                    ),
                  ),
                if (description != null)
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    width: double.infinity,
                    // height: 1.5 * 10,
                    child: Text(
                      description,
                      // maxLines: 2,
                      textAlign: TextAlign.center,
                      style: style.text18.copyWith(fontSize: 15),
                    ),
                  ),
                SizedBox(
                  height: 60,
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (cancel)
                        gradientButton(
                            style: style,
                            function: () => Navigator.pop(context),
                            text: txt("Cancel"),
                            h: 40,
                            w: 140,
                            colors: [
                              const Color.fromARGB(255, 211, 0, 0),
                              const Color.fromARGB(255, 211, 0, 0),
                            ]),
                      gradientButton(
                          style: style,
                          function: () {
                            if (confirmFunction != null) {
                              confirmFunction();
                            }
                            Navigator.pop(context);
                          },
                          text: confirmText,
                          h: 40,
                          w: 140),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
