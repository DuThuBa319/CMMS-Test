part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetDataEvent extends HomeEvent {}

class LoadMoreDataEvent extends HomeEvent {}
