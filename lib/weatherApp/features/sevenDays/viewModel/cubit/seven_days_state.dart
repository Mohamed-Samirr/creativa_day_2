part of 'seven_days_cubit.dart';

@immutable
sealed class SevenDaysState {}

final class SevenDaysInitial extends SevenDaysState {}
final class SevenDaysLoading extends SevenDaysState {}
final class SevenDaysuccess extends SevenDaysState {
  final List<SevenDaysModel> data;
  SevenDaysuccess(this.data);
}
final class SevenDaysFailure extends SevenDaysState {
  final String message;
  SevenDaysFailure(this.message);
}
