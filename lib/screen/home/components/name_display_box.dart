import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/screen/home/components/social_media_icon_btn.dart';

import '../../../utils/constants.dart';

class NameDisplayBox extends StatelessWidget {
  const NameDisplayBox({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "WELCOME TO MY PORTFOLIO! ",
          style:
              TextStyle(fontSize: width <600 ? width * 0.06 : height * 0.05, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Text(
          "I am,",
          textAlign: TextAlign.start,
          style:
              TextStyle(fontSize: width <600 ? width * 0.05 : height * 0.06, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Text(
          "Mohammed \nAlanzi ",
          style:
              TextStyle(fontSize:  width <600 ? width * 0.08 : height *0.09, fontWeight: FontWeight.w700),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.play_arrow_rounded,
              color: myPrimaryColor,
            ),
            SizedBox(
              height: height * 0.05,
              child: DefaultTextStyle(
                style: TextStyle(fontSize:   width <600 ? width * 0.04 : height * 0.04, color: Colors.white),
                child: AnimatedTextKit(
                  totalRepeatCount: 100,
                  animatedTexts: [
                    RotateAnimatedText('software engineering'),
                    RotateAnimatedText('Flutter Developer'),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < mySocialIcons.length; i++)
              SocialMediaIconBtn(
                icon: mySocialIcons[i],
                socialLink: mySocialLinks[i],
                height: height * 0.035,
                horizontalPadding: width * 0.005,
              ),
          ],
        )
      ],
    );
  }
}
