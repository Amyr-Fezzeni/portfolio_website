import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/desktop.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:flutter_portfolio_website/web/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => StateProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amyr Fezzeni',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const HomePage() //const Desktop(),
        );
  }
}
