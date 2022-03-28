import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/custom%20widgets/contact/social_media.dart';
import 'package:flutter_portfolio_website/custom%20widgets/home/title_widget.dart';
import 'package:provider/provider.dart';
import '../../providers/state_provider.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.watch<StateProvider>();
    var size = MediaQuery.of(context).size;
    OutlineInputBorder myinputborder() {
      return OutlineInputBorder(
          //Outline border type for TextFeild
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: state.darkMode
                ? Colors.white70
                : const Color.fromARGB(255, 73, 73, 73),
            width: 1,
          ));
    }

    OutlineInputBorder myfocusborder() {
      return const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: btnColor,
            width: 1,
          ));
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 150),
      height: 690,
      width: size.width * 0.95,
      child: Column(
        children: [
          const TitleWidget(
            title: "Contact",
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 550,
                width: 500,
                decoration: BoxDecoration(
                    color: state.bgcolor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-10, -10),
                        blurRadius: 15,
                        color: Colors.white24,
                      ),
                      BoxShadow(
                          offset: Offset(18, 18),
                          blurRadius: 15,
                          color: Colors.black26),
                    ]),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Column(
                  children: [
                    TextField(
                      style: state.text18,
                      decoration: InputDecoration(
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder()),
                      controller: state.subject,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      style: state.text18,
                      decoration: InputDecoration(
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder()),
                      controller: state.body,
                      maxLines: 8,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    NeumorphicButton(
                        onPressed: () =>
                            context.read<StateProvider>().sendEmail(),
                        style: NeumorphicStyle(
                          color: state.bgcolor,
                          shape: NeumorphicShape.flat,
                          intensity: 0.5,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                        ),
                        child: SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_rounded,
                                color: state.invertedColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Send Email",
                                style: state.text18,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: state.bgcolor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-10, -10),
                        blurRadius: 15,
                        color: Colors.white24,
                      ),
                      BoxShadow(
                          offset: Offset(18, 18),
                          blurRadius: 15,
                          color: Colors.black26),
                    ]),
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                width: 400,
                height: 550,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Social Media",
                      style: state.title,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SocialMedia(
                      title: "GitHub",
                      link: "",
                      image: "github.png",
                      index: 1,
                    ),
                    const SocialMedia(
                        title: "Linkedin",
                        link: "",
                        image: "linkedin.png",
                        index: 2),
                    const SocialMedia(
                        title: "Youtube",
                        link: "",
                        image: "youtube.png",
                        index: 3),
                    const SocialMedia(
                        title: "Facebook",
                        link: "",
                        image: "facebook.png",
                        index: 4),
                    const SocialMedia(
                        title: "CodinGame",
                        link: "",
                        image: "codingame.png",
                        index: 5),
                    const SocialMedia(
                        title: "+216 54 230 376",
                        link: "",
                        image: "whatsapp.png",
                        index: 6),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
