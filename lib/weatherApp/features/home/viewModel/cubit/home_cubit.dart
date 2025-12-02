import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:creativa_day_2/weatherApp/features/home/model/home_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading ());

  final dio = Dio();
  getWaetherData ()async{
    try{
      Response res = await dio.get('https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&daily=sunrise,sunset,daylight_duration,sunshine_duration,temperature_2m_max,temperature_2m_min&hourly=temperature_2m,relative_humidity_2m,rain,apparent_temperature,precipitation_probability,precipitation&current=temperature_2m,is_day,rain');
      
      if(res.statusCode == 200){
        HomeModel homeModel = HomeModel.fromJson(res.data);
        emit(HomeSuccess(homeModel));
      } else {
        emit(HomeFailure('some error occurred'));
      }
    } catch(e){
      emit(HomeFailure('$e'));
    }
  }

}
