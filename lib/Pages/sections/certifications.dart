import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/certifications/certification_card.dart';
import 'package:provider/provider.dart';
import '../../providers/state_provider.dart';

class Certifications extends StatelessWidget {
  const Certifications({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var state = context.watch<StateProvider>();
    return SizedBox(
      // height: 900,
      width: size.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 50,
                color: Colors.grey,
              ),
              Text("   Certifications   ", style: state.title),
              Container(
                height: 1,
                width: 50,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: allCertifications
                .map((certification) => CertificationCard(
                      certification: certification,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
