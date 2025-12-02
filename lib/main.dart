import 'package:creativa_day_2/coffeApp/home_screen.dart';
import 'package:creativa_day_2/coffeApp/splash_screen.dart';
import 'package:creativa_day_2/weatherApp/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? repeat = prefs.getBool('repeat');
  runApp(MyApp(repeat: repeat));
}

class MyApp extends StatelessWidget {
  final bool? repeat;
  const MyApp({super.key, this.repeat});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     home:HomeScreenWeather(),
    );
  }
}


