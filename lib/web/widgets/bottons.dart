import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';

Widget gradientButton(
        {required Function? function,
        required String text,
        required style,
        List<Color> colors = const [btnColor, btnColor],
        double? w,
        double h = 50.0}) =>
    Container(
      width: w,
      height: h,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black45, blurRadius: 5, offset: Offset(3, 3))
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () async {
          if (function != null) {
            function();
          }
        },
        style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 3),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            padding: MaterialStateProperty.resolveWith(
                (states) => const EdgeInsets.all(0.0))),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Container(
            height: h,
            width: w,
            constraints: const BoxConstraints(
                minHeight: 60.0), // min sizes for Material buttons
            alignment: Alignment.center,
            child: Text(
              text,
              style: style.text18.copyWith(fontSize: 18.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
