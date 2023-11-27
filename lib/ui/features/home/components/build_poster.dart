import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_constant.dart';

Container buildPoster(BuildContext context) {
  return Container(
    width: AppConstant.deviceWidth(context),
    height: AppConstant.deviceHeight(context) / 3.5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: const DecorationImage(
        image: CachedNetworkImageProvider(AppConstant.homePoster),
        fit: BoxFit.cover,
      ),
    ),
  );
}
