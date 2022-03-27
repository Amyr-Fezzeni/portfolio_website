import 'package:flutter/material.dart';
class HPicture extends StatelessWidget {
  final String link;
  final double aspect;
  const HPicture({Key? key, required this.link, required this.aspect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: aspect,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(link))),
        ),
      ),
    );
  }
}
