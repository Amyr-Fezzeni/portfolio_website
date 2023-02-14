import 'dart:developer';

import 'package:flutter/material.dart';

import '../services/shared_data.dart';

class LanguageProvider with ChangeNotifier {
  String currentLanguage = "English";
  setDefaultLanguage(String code) {
    currentLanguage = code;
    DataPrefrences.setDefaultLanguage(code);
    log(currentLanguage);
    notifyListeners();
  }
}
