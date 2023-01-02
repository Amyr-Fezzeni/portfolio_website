import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/about/profile.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: state.bgcolor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const Profile(
              size: 100,
            ),
            const Spacer(),
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
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
