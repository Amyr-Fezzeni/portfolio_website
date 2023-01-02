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
    var state = context.watch<StateProvider>();
    return Hero(
      tag: certification.name,
      child: Material(
        color: state.bgcolor,
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Center(
            child:
                Image.asset("assets/certifications/${certification.original}"),
          ),
        ),
      ),
    );
  }
}
