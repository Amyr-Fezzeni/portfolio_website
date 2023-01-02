import 'package:flutter/material.dart';

class BGColors extends StatefulWidget {
  const BGColors({Key? key}) : super(key: key);

  @override
  State<BGColors> createState() => _BGColorsState();
}

class _BGColorsState extends State<BGColors> {
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    const Color.fromARGB(255, 255, 59, 229),
    const Color.fromARGB(255, 5, 133, 219),
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = const Color.fromARGB(255, 5, 133, 219);
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;
  @override
  void initState() {

    super.initState();
    Future.delayed(const Duration(milliseconds: 100))
        .then((value) => setState(() {
              bottomColor = Colors.blue;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      onEnd: () {
        setState(() {
          index = index + 1;
          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
        });
      },
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          // color: Color,
          gradient: LinearGradient(
              begin: begin, end: end, colors: [bottomColor, topColor])),
    );
  }
}
