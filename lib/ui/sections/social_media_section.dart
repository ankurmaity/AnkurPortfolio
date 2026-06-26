import 'package:flutter/material.dart';

import '../../data/assets.dart';
import '../../data/constant.dart';
import '../utils/utils.dart';
import '../widgets/round_icon_widget.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIcon(Assets.linkedin, onTap: () {
          Utils.instance.launchWebUrl(Constant.linkedin);
        }),
        RoundIcon(Assets.github, onTap: () {
          Utils.instance.launchWebUrl(Constant.github);
        }),
        RoundIcon(Assets.facebook, onTap: () {
          Utils.instance.launchWebUrl(Constant.facebook);
        }),
        RoundIcon(Assets.instagram, onTap: () {
          Utils.instance.launchWebUrl(Constant.instagram);
        }),
      ],
    );
  }
}
