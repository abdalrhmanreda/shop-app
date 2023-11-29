part of 'search_cubit.dart';

@immutable
abstract class SearchStates {}

class SearchInitial extends SearchStates {}

class LoadingState extends SearchStates {}

class FailureState extends SearchStates {}

class GetAllBrandsSuccessState extends SearchStates {}

class SearchSuccessState extends SearchStates {}
