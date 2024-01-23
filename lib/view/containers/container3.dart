import 'package:flutter/material.dart';
import 'package:multiplatform_apps/components/common_containers.dart';
import 'package:multiplatform_apps/components/mobile_common_container.dart';
import 'package:multiplatform_apps/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile:mobileContainer3(), desktop:desktopContainer3(),);
  }

  Widget desktopContainer3() {
    return commonContainer("Alwalys online", "Real-time \nsupport \nwith cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration1, false);
  }
  Widget mobileContainer3(){
    return mobileCommonContainer("Alwalys online", "Real-time \nsupport \nwith cloud",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration1,);
  }
}
