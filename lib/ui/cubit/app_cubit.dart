import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shoes/generated/assets.dart';
import 'package:shoes/ui/features/cart/screens/cart_screen.dart';
import 'package:shoes/ui/features/favourite/screens/favourite_screen.dart';
import 'package:shoes/ui/features/home/models/product_model.dart';
import 'package:shoes/ui/features/home/screens/home_screen.dart';
import 'package:shoes/ui/features/settings/screens/settings_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(IconlyBroken.home), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.heart), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.buy), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.setting), label: ''),
  ];
  List<Widget> screens = const [
    HomeScreen(),
    FavouriteScreen(),
    CartScreen(),
    SettingsScreen(),
  ];
  List<String> titles = ['Sneakers', 'Favourite', 'Cart', 'Settings'];
  int currentIndex = 0;
  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }

  AllProductModel? allProductModel;
  void getAllProducts() {
    emit(LoadingState());
    rootBundle.loadString(Assets.productsProducts).then((value) {
      allProductModel = AllProductModel.fromJson(jsonDecode(value));
      emit(GetHomeProductsSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }
}
