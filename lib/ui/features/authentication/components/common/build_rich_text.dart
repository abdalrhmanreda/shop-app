import 'package:flutter/material.dart';

import '../../../../../../config/colors/app_colors.dart';

Widget customRichText({
  required BuildContext context,
  required String textPartOne,
  required String textPartTwo,
}) =>
    RichText(
      text: TextSpan(
          text: textPartOne,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
          children: [
            TextSpan(
              text: textPartTwo,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: const Color(AppColors.kPrimaryColor),
                  ),
            )
          ]),
    );
