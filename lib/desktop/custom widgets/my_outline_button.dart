import 'package:flutter/material.dart';

Widget primaryButton(
    {required String text,
    double height = 40,
    double? width,
    String? img,
    Function? function,
    BorderRadius? borderRadius,
    bool transparent = false,
    Color? color,
    Border? border,
    LinearGradient? gradient}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        gradient: gradient,
        color: color ?? Colors.transparent,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        border: border),
    child: ElevatedButton(
        onPressed: () async {
          if (function != null) {
            function();
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: color,
          elevation: transparent ? 0 : 4,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (img != null)
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset(img, height: 40)),
              Text(text),
            ],
          ),
        )),
  );
}
