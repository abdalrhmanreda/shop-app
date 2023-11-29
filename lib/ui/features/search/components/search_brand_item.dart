import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/core/components/custom_navigatation.dart';

import '../../../../core/constant/app_constant.dart';
import '../../home/components/build_product_item.dart';

Column buildListBrandItem({
  required BuildContext context,
  required List list,
  required String title,
  String seeMore = "",
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 22),
          ),
          InkWell(
            onTap: () {
              CustomNavigation.navigateByNamedTo(context, RoutePath.category);
            },
            child: Text(
              seeMore,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: AppConstant.deviceHeight(context) / 3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              buildProductItem(context: context, index: index, list: list),
          separatorBuilder: (context, index) => const Gap(15),
          itemCount: list.length,
        ),
      ),
    ],
  );
}
