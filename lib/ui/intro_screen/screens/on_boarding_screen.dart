import 'package:flutter/material.dart';

import '../../../../core/components/custom_text_button.dart';
import '../../../../generated/l10n.dart';
import '../../../config/routes/routes_path.dart';
import '../../../core/cache/hive_cache.dart';
import '../../../core/components/custom_navigatation.dart';
import '../components/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextButton(
              onPressed: () {
                HiveCache.saveData(key: 'onBoarding', value: true)
                    .then((value) {
                  CustomNavigation.navigateAndFinishNyNamed(
                      context, RoutePath.login);
                });
              },
              text: S.of(context).onBoardingTextButtonText,
            ),
          ),
        ],
      ),
      body: const OnBoardingScreenBody(),
    );
  }
}
