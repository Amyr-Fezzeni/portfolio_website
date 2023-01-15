import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/models/certification_model.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class CertificationDetails extends StatelessWidget {
  final CertificationModel certification;
  const CertificationDetails({Key? key, required this.certification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var style = context.watch<StateProvider>();
    return Scaffold(
        backgroundColor: style.bgcolor,
        body: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: Colors.transparent,
            height: size.height,
            width: size.width,
            child: Center(
              child: Hero(
                tag: certification.name,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: style.bgcolor,
                      border: Border.all(
                          color: style.invertedColor.withOpacity(.2),
                          width: 3)),
                  child: Image.asset(
                    "assets/certifications/" + certification.original,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
