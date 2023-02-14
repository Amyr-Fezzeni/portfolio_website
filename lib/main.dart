import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/providers/language_provider.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:flutter_portfolio_website/services/shared_data.dart';
import 'package:flutter_portfolio_website/views/home.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'services/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataPrefrences.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StateProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amyr Fezzeni',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        navigatorKey: NavigationService.navigatorKey,
        debugShowCheckedModeBanner: false,
        home: const HomePage() //const Desktop(),
        );
  }
}
