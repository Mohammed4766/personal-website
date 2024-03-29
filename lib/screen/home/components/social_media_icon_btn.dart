import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  const SocialMediaIconBtn(
      {super.key,
      required this.icon,
      required this.socialLink,
      required this.height,
      required this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          height: height,
        ),
        onPressed: () => launchURL(socialLink),
        hoverColor: myPrimaryColor,
      ),
    );
  }
}
