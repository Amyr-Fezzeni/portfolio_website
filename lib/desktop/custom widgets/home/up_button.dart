import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';

class UpButton extends StatelessWidget {
  const UpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        right: 20,
        child: Visibility(
          visible: context.watch<StateProvider>().isUp,
          child: SizedBox(
            height: 40,
            width: 40,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.withOpacity(0.2)),
              child: InkWell(
                onTap: () => context.read<StateProvider>().jumpToSection(0),
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
        ));
  }
}
