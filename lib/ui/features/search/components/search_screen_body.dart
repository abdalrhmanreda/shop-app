import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shoes/core/constant/app_constant.dart';
import 'package:shoes/ui/features/home/components/build_product_item.dart';
import 'package:shoes/ui/features/search/controllers/search_cubit.dart';

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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TextFormField(
              //   onTap: () {
              //     CustomNavigation.navigateByNamedTo(
              //         context, RoutePath.searchProduct);
              //   },
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     prefixIcon: const Icon(IconlyBroken.search),
              //     suffixIcon: const Icon(IconlyBroken.voice),
              //     contentPadding: const EdgeInsets.symmetric(vertical: 15),
              //     hintText: S.of(context).search,
              //   ),
              // ),
              const Gap(30),
              Text(
                'Nike Brand',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 22),
              ),
              SizedBox(
                height: AppConstant.deviceHeight(context) / 3,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildProductItem(
                      context: context,
                      index: index,
                      list: SearchCubit.get(context).allBrandsModel!.nike!),
                  separatorBuilder: (context, index) => const Gap(15),
                  itemCount:
                      SearchCubit.get(context).allBrandsModel!.nike!.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
