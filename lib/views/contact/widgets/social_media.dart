import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:flutter_portfolio_website/providers/state_provider.dart';

class SocialMedia extends StatelessWidget {
  final String image;
  final String title;
  final int index;
  const SocialMedia(
      {Key? key, required this.image, required this.title, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 5, offset: Offset(3, 3))
          ],
          border: Border.all(
              color: state.invertedColor.withOpacity(.4), width: 1.5),
          color: state.bgcolor),
      child: InkWell(
        onTap: () => context.read<StateProvider>().goToWebsite(index),
        child: SizedBox(
          // color: Colors.amber,
          width: 200,
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: index == 1 ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  height: 30,
                  child: Image(
                    image: AssetImage(
                      "assets/icons/$image",
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: state.text18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaSmall extends StatelessWidget {
  final String image;
  final String title;
  final int index;
  const SocialMediaSmall(
      {Key? key, required this.image, required this.title, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () => context.read<StateProvider>().goToWebsite(index),
        child: SizedBox(
          width: 20,
          height: 20,
          child: Container(
              decoration: BoxDecoration(
                  color: index == 1 ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              // height: 10,
              child: Image(
                image: AssetImage(
                  "assets/icons/$image",
                ),
              )),
        ),
      ),
    );
  }
}
