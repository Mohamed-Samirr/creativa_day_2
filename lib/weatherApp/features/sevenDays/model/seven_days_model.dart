class SevenDaysModel {
  final String day;
  final String sunrise;
  final String sunset;
 
  final double highTemp;
  final double lowTemp;

  SevenDaysModel({
    required this.day,
    required this.sunrise,
    required this.sunset,
    
    required this.highTemp,
    required this.lowTemp,
  });

  String get dayName {
    DateTime date = DateTime.parse(day);
    List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[date.weekday - 1];
  }

  factory SevenDaysModel.fromJson(Map<String, dynamic> json, int index) {
    return SevenDaysModel(
      day: json['time'][index],
      sunrise: json['sunrise'][index],
      sunset: json['sunset'][index],
      
      highTemp: (json['temperature_2m_max'][index] as num).toDouble(),
      lowTemp: (json['temperature_2m_min'][index] as num).toDouble(),
    );
  }

  static List<SevenDaysModel> fromJsonList(Map<String, dynamic> dailyData) {
    List<SevenDaysModel> days = [];
    int length = (dailyData['time'] as List).length;
    
    for (int i = 0; i < length; i++) {
      days.add(SevenDaysModel.fromJson(dailyData, i));
    }
    
    return days;
  }
}