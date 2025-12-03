import 'package:bloc/bloc.dart';
import 'package:creativa_day_2/weatherApp/features/sevenDays/model/seven_days_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'seven_days_state.dart';

class SevenDaysCubit extends Cubit<SevenDaysState> {
  SevenDaysCubit() : super(SevenDaysLoading());

  final dio = Dio();
  
  getWaetherData() async {
    try {
      Response ress = await dio.get('https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&daily=sunrise,sunset,daylight_duration,sunshine_duration,temperature_2m_max,temperature_2m_min&hourly=temperature_2m,relative_humidity_2m,rain,apparent_temperature,precipitation_probability,precipitation&current=temperature_2m,is_day,rain');
      
      if (ress.statusCode == 200) {
        List<SevenDaysModel> sevenDaysList = SevenDaysModel.fromJsonList(ress.data['daily']);
        emit(SevenDaysuccess(sevenDaysList));
      } else {
        emit(SevenDaysFailure('some error occurred'));
      }
    } catch (e) {
      emit(SevenDaysFailure('$e'));
    }
  }
}
