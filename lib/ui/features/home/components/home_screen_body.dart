import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:shoes/core/components/progress_indector.dart';
import 'package:shoes/ui/cubit/app_cubit.dart';
import 'package:shoes/ui/features/home/components/brands.dart';

import 'build_poster.dart';
import 'build_product_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ConditionalBuilder(
          condition: AppCubit.get(context).allProductModel != null,
          builder: (context) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                buildPoster(context),
                const BrandsList(),
                const Gap(5),
                MasonryGridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemCount:
                      AppCubit.get(context).allProductModel!.data!.length,
                  itemBuilder: (context, index) {
                    if (index == 1) {
                      return const Gap(20);
                    }
                    return buildProductItem(
                        context: context,
                        index: index,
                        list: AppCubit.get(context).allProductModel!.data!);
                  },
                ),
              ],
            ),
          ),
          fallback: (context) => const CustomLoadingIndicator(),
        );
      },
    );
  }
}
