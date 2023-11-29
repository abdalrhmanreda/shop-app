import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shoes/ui/features/search/controllers/search_cubit.dart';

import '../../../../generated/l10n.dart';

class SearchProductScreenBody extends StatelessWidget {
  const SearchProductScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return BlocConsumer<SearchCubit, SearchStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                controller: searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(IconlyBroken.search),
                  suffixIcon: const Icon(IconlyBroken.voice),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  hintText: S.of(context).search,
                ),
                onChanged: (value) {
                  SearchCubit.get(context).searchProduct(productName: value);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
