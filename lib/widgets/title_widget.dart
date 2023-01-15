import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 1,
            width: 50,
            color: Colors.grey,
          ),
          Text(
            "   $title   ",
            style: context.watch<StateProvider>().title.copyWith(fontSize: 30),
          ),
          Container(
            height: 1,
            width: 50,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class TitleWidgetPhone extends StatelessWidget {
  final String title;
  const TitleWidgetPhone({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 50,
          color: Colors.grey,
        ),
        Text(
          "  $title  ",
          style: context.watch<StateProvider>().titlePhone,
        ),
        Container(
          height: 1,
          width: 50,
          color: Colors.grey,
        ),
      ],
    );
  }
}
