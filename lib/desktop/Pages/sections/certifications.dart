import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/certifications/certification_card.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/home/title_widget.dart';


class Certifications extends StatelessWidget {
  const Certifications({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      height: 950,
      width: size.width * 0.9,
      child: Column(
        children: [
          const TitleWidget(
            title: "Certifications",
          ),
          const SizedBox(
            height: 50,
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
