import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes/generated/assets.dart';
import 'package:shoes/ui/features/search/models/brands_models.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitial());
  static SearchCubit get(context) => BlocProvider.of(context);
  AllBrandsModel? allBrandsModel;
  void getAllBrands() {
    emit(LoadingState());
    rootBundle.loadString(Assets.productsBrands).then((value) {
      allBrandsModel = AllBrandsModel.fromJson(jsonDecode(value));
      emit(GetAllBrandsSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }
}
