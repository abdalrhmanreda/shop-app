import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/core/components/custom_navigatation.dart';
import 'package:shoes/ui/cubit/app_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              AppCubit.get(context).titles[AppCubit.get(context).currentIndex],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  CustomNavigation.navigateByNamedTo(context, RoutePath.search);
                },
                icon: const Icon(IconlyBroken.search),
              ),
            ],
          ),
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: AppCubit.get(context).items,
            currentIndex: AppCubit.get(context).currentIndex,
            onTap: (index) {
              AppCubit.get(context).changeNavBar(index);
            },
          ),
        );
      },
    );
  }
}
