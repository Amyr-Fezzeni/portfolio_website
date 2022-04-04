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
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () => context.read<StateProvider>().goToWebsite(index),
        child: SizedBox(
          width: 200,
          height: 50,
          child: Row(
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
