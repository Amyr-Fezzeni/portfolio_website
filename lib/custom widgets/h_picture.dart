import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

class HPicture extends StatelessWidget {
  final index;
  const HPicture({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.cyan,
        color: Colors.transparent,
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/instagram/$index.JPG"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
