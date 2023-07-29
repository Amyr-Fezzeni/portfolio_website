import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
      top: 20,
      left: 20,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.withOpacity(0.3)),
        child: InkWell(
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 20,
            ),
            onTap: () async {
              Scaffold.of(context).openDrawer();
              // await showModalBottomSheet(
              //     isScrollControlled: true,
              //     backgroundColor: Colors.black54,
              //     context: context,
              //     builder: (context) => DraggableScrollableSheet(
              //         initialChildSize: 1,
              //         builder: (_, controller) => SizedBox(
              //               width: size.width,
              //               height: size.height,
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 crossAxisAlignment: CrossAxisAlignment.center,
              //                 children: const [
              //                   HoverButtonMenu(
              //                     name: "About",
              //                     index: 0,
              //                   ),
              //                   HoverButtonMenu(
              //                     name: "Skills",
              //                     index: 1,
              //                   ),
              //                   HoverButtonMenu(
              //                     name: "Projects",
              //                     index: 2,
              //                   ),
              //                   HoverButtonMenu(
              //                     name: "Certifications",
              //                     index: 3,
              //                   ),
              //                   HoverButtonMenu(
              //                     name: "Photography",
              //                     index: 4,
              //                   ),
              //                   HoverButtonMenu(
              //                     name: "Contact",
              //                     index: 5,
              //                   ),
              //                 ],
              //               ),
              //             )));
            }),
      ),
    );
  }
}
//     return Positioned(
//         top: 20,
//         right: 20,
//         child: Visibility(
//           visible: context.watch<StateProvider>().isUp,
//           child: SpeedDial(
//               buttonSize: 40,
//               childrenButtonSize: 50,
//               spaceBetweenChildren: 10,
//               animatedIcon: AnimatedIcons.menu_close,
//               overlayOpacity: 0.74,
//               animationSpeed: 500,
//               direction: SpeedDialDirection.down,
//               overlayColor: Colors.black,
//               children: [
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.person),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(0)),
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.sort_outlined),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(1)),
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.precision_manufacturing_sharp),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(2)),
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.assignment_turned_in_rounded),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(3)),
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.camera),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(4)),
//                 SpeedDialChild(
//                     backgroundColor: Colors.blueGrey,
//                     foregroundColor: Colors.white,
//                     child: const Icon(Icons.mail),
//                     onTap: () =>
//                         context.read<StateProvider>().jumpToSection(5)),
//               ]),
//         ));
//   }
// }
