import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import '../../widgets/title_widget.dart';
import 'certification_details.dart';

import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class Certifications extends StatelessWidget {
  const Certifications({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      // height: 960,
      // width: size.width * 0.9,
      child: Column(
        children: [
          const TitleWidget(
            title: "Certifications",
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            // color: Colors.red,
            // width: 500,
            child: Wrap(
              children: [
                ...allCertifications
                    .map(
                      (e) => Builder(builder: (context) {
                        // bool vertical = e.contains("vertical");

                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              padding: const EdgeInsets.all(5),
                              height: size.width * .15,
                              width: size.width * .2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 193, 193, 193),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(2, 2),
                                        blurRadius: 7)
                                  ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Hero(
                                    tag: e.name,
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CertificationDetails(
                                                        certification: e))),
                                        child: Image.asset(
                                          "assets/certifications/${e.small}",
                                          fit: BoxFit.cover,
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
                              width: size.width * .2,
                              child: Text(
                                e.name,
                                textAlign: TextAlign.center,
                                style: context
                                    .watch<StateProvider>()
                                    .text18
                                    .copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      }),
                    )
                    .toList()
              ],
            ),
          ),
          // Wrap(
          //   children: allCertifications
          //       .map((certification) => CertificationCard(
          //             certification: certification,
          //           ))
          //       .toList(),
          // )
        ],
      ),
    );
  }
}
