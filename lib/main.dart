import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/video%20player/youtube_player.dart';
import 'package:flutter_portfolio_website/desktop/desktop.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amyr Fezzeni',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //     body: Container(
      //         // width: 500,
      //         color: Colors.red,
      //         child: const YoutubePlayerWidget(
      //           links: ["ZQMlZmmDYTs"],
      //         ))),
      home: const Desktop(),
    );
  }
}
