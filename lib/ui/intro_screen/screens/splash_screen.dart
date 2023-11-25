import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors/app_colors.dart';
import '../../../core/components/animation_transitions.dart';
import '../../../core/constant/app_constant.dart';
import '../../../generated/assets.dart';
import 'on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        a = true;
      });
    });
    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        b = true;
      });
    });
    Timer(const Duration(milliseconds: 1300), () {
      setState(() {
        c = true;
      });
    });
    Timer(const Duration(milliseconds: 1700), () {
      setState(() {
        e = true;
      });
    });
    Timer(const Duration(milliseconds: 3400), () {
      setState(() {
        d = true;
      });
    });
    Timer(const Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          AnimationTransitions(
            route: const OnBoardingScreen(),
          ),
        );
      });
    });
  }

  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.kPrimaryColor),
      body: ListView(
        children: [
          SizedBox(
            height: AppConstant.deviceHeight(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: d ? 900 : 2500),
                  curve: d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
                  height: d
                      ? 0
                      : a
                          ? AppConstant.deviceHeight(context) / 6
                          : 20,
                  width: AppConstant.deviceWidth(context) / 2.5,
                  child: SvgPicture.asset(
                    Assets.logoLogo,
                    width: AppConstant.deviceWidth(context) / 2.5,
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(
                    seconds: d
                        ? 1
                        : c
                            ? 2
                            : 0,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: d
                      ? AppConstant.deviceHeight(context)
                      : c
                          ? 80
                          : 20,
                  width: d
                      ? AppConstant.deviceWidth(context)
                      : c
                          ? 200
                          : 20,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kPrimaryColor),
                    // shape: _c? BoxShape.rectangle : BoxShape.circle,
                    borderRadius: d
                        ? const BorderRadius.only()
                        : BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: e
                        ? AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              FadeAnimatedText(
                                'Sneaker',
                                duration: const Duration(milliseconds: 1700),
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                      color: const Color(AppColors.kWhiteColor),
                                    ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
