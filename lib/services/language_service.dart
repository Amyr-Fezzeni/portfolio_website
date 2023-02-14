import 'package:flutter_portfolio_website/providers/language_provider.dart';
import 'package:provider/provider.dart';

import '../consts/language.dart';
import 'navigation_service.dart';

String txt(String key) {
  try {
    String result = NavigationService.navigatorKey.currentContext!
                .read<LanguageProvider>()
                .currentLanguage ==
            "English"
        ? english[key].toString()
        : frensh[key].toString();
    return result;
  } on Exception {
    return key;
  }
}
