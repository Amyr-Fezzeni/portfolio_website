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
      height: 1170,
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

class CertificationsPhone extends StatelessWidget {
  const CertificationsPhone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    ScrollController _controller = ScrollController();
    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      width: width * 0.99,
      child: Column(
        children: [
          const TitleWidgetPhone(
            title: "Certifications",
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 280,
            child: Scrollbar(
              controller: _controller,
              thumbVisibility: true,
              trackVisibility: true,
              child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: allCertifications.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      child: CertificationCardPhone(
                          certification: allCertifications[i]),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
