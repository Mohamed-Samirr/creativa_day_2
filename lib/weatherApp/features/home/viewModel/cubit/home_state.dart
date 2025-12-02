part of 'home_cubit.dart';

@immutable
sealed class HomeState {}


final class HomeLoading extends HomeState {}
final class HomeSuccess extends HomeState {
  final HomeModel data;
  HomeSuccess(this.data);
}
final class HomeFailure extends HomeState {
  final String message;
  HomeFailure(this.message);
}
  
