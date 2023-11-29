import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gap/gap.dart';
import 'package:shoes/ui/features/search/components/search_brand_item.dart';
import 'package:shoes/ui/features/search/controllers/search_cubit.dart';

import '../../../../config/routes/routes_path.dart';
import '../../../../core/components/custom_navigatation.dart';
import '../../../../core/components/progress_indector.dart';
import '../../../../generated/l10n.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<SearchCubit, SearchStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ConditionalBuilder(
            condition: SearchCubit.get(context).allBrandsModel != null,
            builder: (context) => SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        CustomNavigation.navigateByNamedTo(
                            context, RoutePath.searchProduct);
                      },
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: const Icon(IconlyBroken.search),
                          suffixIcon: const Icon(IconlyBroken.voice),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          hintText: S.of(context).search,
                        ),
                      ),
                    ),
                    const Gap(30),
                    buildListBrandItem(
                      seeMore: 'see more',
                      context: context,
                      list: SearchCubit.get(context).allBrandsModel!.nike!,
                      title: 'Nike Brand',
                    ),
                    buildListBrandItem(
                      context: context,
                      list: SearchCubit.get(context).allBrandsModel!.converse!,
                      title: 'Converse Brand',
                    ),
                    buildListBrandItem(
                      context: context,
                      list: SearchCubit.get(context).allBrandsModel!.puma!,
                      title: 'Puma Brand',
                    ),
                  ],
                ),
              ),
            ),
            fallback: (context) => const CustomLoadingIndicator(),
          );
        },
      ),
    );
  }
}
