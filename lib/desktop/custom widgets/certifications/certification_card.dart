import 'package:flutter/material.dart';

import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/desktop/Pages/certification%20details/certification_details.dart';
import 'package:flutter_portfolio_website/models/certification_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';

class CertificationCard extends StatelessWidget {
  final CertificationModel certification;
  const CertificationCard({Key? key, required this.certification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      margin: const EdgeInsets.all(10),
      width: 266,
      child: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: btnColor, offset: Offset(2, 2), blurRadius: 7)
                  ]),
              child: AspectRatio(
                aspectRatio: 16 / 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.transparent,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Hero(
                        tag: certification.name,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        CertificationDetails(
                                            certification: certification),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return child;
                                    })),
                      

                            child: Image.asset(
                                "assets/certifications/${certification.small}"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              certification.name,
              style: state.text18,
            ),
          )
        ],
      ),
    );
  }
}



class CertificationCardPhone extends StatelessWidget {
  final CertificationModel certification;
  const CertificationCardPhone({Key? key, required this.certification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: btnColor, offset: Offset(2, 2), blurRadius: 7)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.transparent,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Hero(
                    tag: certification.name,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        CertificationDetails(
                                            certification: certification),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return child;
                                })),
                        child: Image.asset(
                            "assets/certifications/${certification.small}"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              certification.name,
              style: state.text18,
            ),
          )
        ],
      ),
    );
  }
}
