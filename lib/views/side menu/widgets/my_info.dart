import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/about/profile.dart';
import 'package:provider/provider.dart';

import '../../../providers/state_provider.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      color: state.bgcolor,
      // height: 300,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Profile(
            size: 160,
          ),
          const SizedBox(height: 20),
          Text(
            "Amyr Fezzeni",
            style: state.text18,
          ),
          Text(
            "Lead Mobile Developer\nComputer Software engineering",
            textAlign: TextAlign.center,
            style: state.text18.copyWith(
              fontWeight: FontWeight.w200,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
