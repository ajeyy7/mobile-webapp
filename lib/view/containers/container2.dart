import 'package:flutter/material.dart';
import 'package:multiplatform_apps/utils/colors.dart';
import 'package:multiplatform_apps/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: mobileContainer(), desktop: desktopContainer());
  }

//====================Desktopwidget=====================

  Widget desktopContainer() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  right: -21,
                  top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain, image: AssetImage(vector))),
                  )),
              Positioned(
                  left: -21,
                  bottom: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain, image: AssetImage(vector1))),
                  )),
              Positioned(
                left: 43,
                bottom: 0,
                right: 43,
                child: Container(
                  width: double.infinity,
                  height: 700,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(dashboard))),
                ),
              )
            ],
          )),
          Container(
            color: Colors.grey.shade50,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(linkedin),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 38,
        width: 160,
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.contain, image: AssetImage(name))),
      ),
    );
  }

  //========= =============Mobile Widget==================
  Widget mobileContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(dashboard))),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade50,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(linkedin),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }
}
