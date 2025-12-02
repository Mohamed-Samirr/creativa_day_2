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
    List<dynamic> hoursTemps = json['hourly']['temperature_2m'];
    List<HourModel> hourlyForecast = [];
    for (int i = 0; i < 24; i++) {
      hourlyForecast.add(HourModel(
        time: i==0 ? '12 AM' : '$i:00',
        temperature: (hoursTemps[i] as num).toInt(),
      ));
    }
    return HomeModel(
      currentTemperature: (json['current']['temperature_2m'] as num).toDouble(),
      minTemperature: (json['daily']['temperature_2m_min'][0] as num).toDouble(),
      maxTemperature: (json['daily']['temperature_2m_max'][0] as num).toDouble(),
      hourlyForecast: hourlyForecast,

    );


  }



}
class HourModel{
  final String time;
  final int temperature;

  HourModel({required this.time, required this.temperature});
}