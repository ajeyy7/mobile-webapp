import 'package:flutter/material.dart';
import 'package:multiplatform_apps/components/common_containers.dart';
import 'package:multiplatform_apps/components/mobile_common_container.dart';
import 'package:multiplatform_apps/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container3State();
}

class _Container3State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile:mobileContainer5(), desktop:desktopContainer5(),);
  }

  Widget desktopContainer5() {
    return commonContainer("Use anytime", "Use anytime \nwhen you \nneed",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration3, true);
  }
  Widget mobileContainer5(){
    return mobileCommonContainer("Use anytime", "Use anytime \nwhen you \nneed",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration3);
  }
}
