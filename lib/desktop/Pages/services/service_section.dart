import 'package:flutter/material.dart';

import '../../../consts/consts.dart';
import '../../../consts/style.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                services.map((index) => ServiceCard(service: index)).toList(),
          )
        ],
      ),
    );
  }
}
