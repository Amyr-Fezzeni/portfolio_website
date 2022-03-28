import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';


class FilterProjectButton extends StatelessWidget {
     final String name;
    final String image;
  const FilterProjectButton({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: btnColor),
          borderRadius: BorderRadius.circular(12)),
      child: TextButton(
        onPressed: () =>
            context.read<StateProvider>().filterProject(name),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 50,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: context.watch<StateProvider>().text18,
            )
          ],
        ),
      ),
    );
  }
}

class FilterProjectButtonPhone extends StatelessWidget {
  final String name;
  final String image;
  const FilterProjectButtonPhone({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: btnColor),
          borderRadius: BorderRadius.circular(12)),
      child: TextButton(
        onPressed: () => context.read<StateProvider>().filterProject(name),
        child: Image.asset(
          image,
          width: 50,
        ),
      ),
    );
  }
}