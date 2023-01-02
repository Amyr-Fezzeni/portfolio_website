import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/about/profile.dart';
import 'package:flutter_portfolio_website/desktop/custom%20widgets/appbar/hover_button.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';
import 'package:provider/provider.dart';

class NavPanelCustomer extends StatelessWidget {
  const NavPanelCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = context.watch<StateProvider>();
    ListTile buildMenuTile(
        {required String title,
        required IconData icon,
        required Function() onClick}) {
      return ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: style.text18.copyWith(color: Colors.white),
        ),
        onTap: onClick,
      );
    }

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: style.bgcolor,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
                // height: 200,
                // width: 200,
                // color: Colors.amber,
                padding: const EdgeInsets.all(0),
                child: const Profile(size: 100)),
            const HoverButtonMenu(
              name: "About",
              index: 0,
            ),
            const HoverButtonMenu(
              name: "Skills",
              index: 1,
            ),
            const HoverButtonMenu(
              name: "Projects",
              index: 2,
            ),
            const HoverButtonMenu(
              name: "Certifications",
              index: 3,
            ),
            const HoverButtonMenu(
              name: "Photography",
              index: 4,
            ),
            const HoverButtonMenu(
              name: "Contact",
              index: 5,
            ),
          ],
        ),
      ),
    );
  }
}
