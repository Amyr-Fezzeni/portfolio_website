import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:flutter_portfolio_website/views/contact/widgets/social_media.dart';
import 'package:provider/provider.dart';
import '../../../providers/state_provider.dart';
import '../../widgets/title_widget.dart';

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
            color: state.invertedColor.withOpacity(.3),
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
      // height: 690,
      width: size.width * 0.95,
      // color: Colors.grey.withOpacity(.3),
      child: Column(
        children: [
          const TitleWidget(
            title: "Contact",
          ),
          // const SizedBox(
          //   height: 50,
          // ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                // height: 550,
                // width: 500,
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
                margin: const EdgeInsets.all(
                  50,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  children: [
                    TextField(
                      style: state.text18,
                      decoration: InputDecoration(
                          border: myinputborder(),
                          hintText: "Subject",
                          hintStyle: state.text18.copyWith(
                              color: state.invertedColor.withOpacity(.7)),
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
                          hintText: "Message",
                          hintStyle: state.text18.copyWith(
                              color: state.invertedColor.withOpacity(.7)),
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
                          intensity: .9,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(8)),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            // width: 150,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.mail_rounded,
                                  color: state.invertedColor.withOpacity(.7),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Send Message",
                                  style: state.text18,
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: state.bgcolor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(-10, -10),
                        blurRadius: 15,
                        color: Colors.grey.withOpacity(.2),
                      ),
                      const BoxShadow(
                          offset: Offset(18, 18),
                          blurRadius: 15,
                          color: Colors.black26),
                    ]),
                padding: const EdgeInsets.all(
                  20,
                ),
                margin: const EdgeInsets.all(
                  50,
                ),
                width: double.infinity,
                // height: 550,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Contact me",
                      style: state.title.copyWith(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      runAlignment: WrapAlignment.center,
                      alignment: WrapAlignment.center,
                      children: const [
                        SocialMedia(
                          title: "GitHub",
                          image: "github.png",
                          index: 1,
                        ),
                        SocialMedia(
                            title: "Linkedin", image: "linkedin.png", index: 2),
                        SocialMedia(
                            title: "Youtube", image: "youtube.png", index: 3),
                        SocialMedia(
                            title: "Facebook", image: "facebook.png", index: 4),
                        SocialMedia(
                            title: "CodinGame",
                            image: "codingame.png",
                            index: 5),
                        SocialMedia(
                            title: "+216 54 230 376",
                            image: "whatsapp.png",
                            index: 6),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
