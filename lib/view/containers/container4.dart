import 'package:flutter/material.dart';
import 'package:multiplatform_apps/components/common_containers.dart';
import 'package:multiplatform_apps/components/mobile_common_container.dart';
import 'package:multiplatform_apps/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container3State();
}

class _Container3State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile:mobileContainer4(), desktop:desktopContainer4(),);
  }

  Widget desktopContainer4() {
    return commonContainer("free some cost", "Save cost \nfor you and \nfamily",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut..",
        illustration2, true);
  }
  Widget mobileContainer4(){
    return mobileCommonContainer("free some cost", "Save cost \nfor you and \nfamily",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut..",
        illustration2);
  }
}
