import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/constant/app_constant.dart';

Container buildProductItem(
    {required BuildContext context,
    required int index,
    required List<dynamic> list}) {
  return Container(
    margin: const EdgeInsets.all(4),
    padding: const EdgeInsets.all(7),
    height: AppConstant.deviceHeight(context) / 3.5,
    width: AppConstant.deviceWidth(context) / 2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        style: BorderStyle.solid,
        color: Colors.grey,
      ),
    ),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
              imageUrl: '${list[index].image}',
              errorWidget: (context, url, error) => const SizedBox(),
            ),
            Text(
              '${list[index].name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${list[index].initialPrice} \$' ?? "150 \$",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${list[index].brand!.name}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyBroken.bookmark,
            color: Colors.black38,
            size: 26,
          ),
        ),
      ],
    ),
  );
}
