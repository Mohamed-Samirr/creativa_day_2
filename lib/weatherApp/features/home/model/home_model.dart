class HomeModel {
  final double currentTemperature;
  final double minTemperature;
  final double maxTemperature;
  final List<HourModel> hourlyForecast ;

  HomeModel({
    required this.currentTemperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.hourlyForecast,
  });

  factory HomeModel.fromJson(Map json) {
    List<double> hoursTemps = json['hourly']['temperature_2m'];
    List<HourModel> hourlyForecast = [];
    for (int i = 0; i < 24; i++) {
      hourlyForecast.add(HourModel(
        time: i==0 ? '12 AM' : '$i:00',
        temperature: hoursTemps[i].toInt(),
      ));
    }
    return HomeModel(
      currentTemperature: json['current']['temperature_2m'],
      minTemperature: json['min_temperature']['temperature_2m_min'][0],
      maxTemperature: json['max_temperature']['temperature_2m_max'][0],
      hourlyForecast: hourlyForecast,

    );


  }



}
class HourModel{
  final String time;
  final int temperature;

  HourModel({required this.time, required this.temperature});
}