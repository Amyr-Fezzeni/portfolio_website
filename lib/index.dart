import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/desktop.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        if (size.width > 1120) {
          return const Desktop();
        } else {
          return Scaffold(body: Container(color: bgColor, child: const Center(child: Text("Phone"),),),);
        }
      },
    );
  }
}
