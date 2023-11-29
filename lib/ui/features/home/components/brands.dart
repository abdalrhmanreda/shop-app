import 'package:flutter/material.dart';
import 'package:shoes/config/colors/app_colors.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      Assets.brandsAdidas,
      Assets.brandsSupereme,
      Assets.brandsConverse,
      Assets.brandsJorden,
      Assets.brandsNike,
      Assets.brandsPuma,
      Assets.brandsVans,
      Assets.brandsYeezy
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).brands,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: items
                .map(
                  (e) => Container(
                    clipBehavior: Clip.antiAlias,
                    // padding: const EdgeInsets.all(5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: const BoxDecoration(
                      color: Color(AppColors.brandCircleColor),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      e,
                      height: 70,
                      width: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
