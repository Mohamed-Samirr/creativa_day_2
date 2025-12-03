import 'package:creativa_day_2/weatherApp/features/sevenDays/viewModel/cubit/seven_days_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SevenDaysScreen extends StatelessWidget {
  const SevenDaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => SevenDaysCubit()..getWaetherData(),
     child: Scaffold(
      backgroundColor: Color(0xff3E2D8F),
      body: BlocBuilder<SevenDaysCubit, SevenDaysState>(
      builder: (context, state) {
         if (state is SevenDaysLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SevenDaysuccess) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('North America ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      Text('Max: ${state.data[0].highTemp.toStringAsFixed(1)}° Min: ${state.data[0].lowTemp.toStringAsFixed(1)}°',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 30),
                      Text('7-Days Forecasts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          //shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.data.length,
                        
                         itemBuilder: (BuildContext context,  index) {
                            final day = state.data[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 100,
                                width: 82,
                                decoration: BoxDecoration(
                                  color: Color(0xff6C54C6),
                                  borderRadius: BorderRadius.circular(50),),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('${day.highTemp.toStringAsFixed(0)}°C',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Image.asset('assets/Weather _))10 18 (1).png', height: 40),
                                    SizedBox(height: 5),
                                    Text(
                                      day.dayName,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                          
                                  ],
                          
                                ),
                              ),
                            );
                         },
                          
                        
                        
                          
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xff6C54C6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 200,
                        width: 352,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/icon _crosshairs_.png'),
                                SizedBox(width: 10),
                                Text('AIR QUALITY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                ),

                              ],

                            ),
                            SizedBox(height: 20),
                            Text('3-Low Health Risk',
                            style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                            
                            ),
                            SizedBox(height: 30),
                            Divider(color: Color(0xffBD08FC)),
                            Row(
                              children: [
                                Text('see more',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18
                                  
                                ),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward,
                                color: Colors.white70,
                                
                                )

                              ],
                            ),

                          ],
                        ) ,
                        
                  
                  
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xff6C54C6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 174,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.wb_sunny, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text('SUNRISE', style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  state.data[0].sunrise.substring(11),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Sunset: ${state.data[0].sunset.substring(11)}',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xff6C54C6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 174,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.light_mode, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text('UV INDEX', style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Moderate',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  
                    ],
                  ),
                ),
              );
            } else if (state is SevenDaysFailure){
             return Center(
                child: Text('Error: ${state.message}'),
              );
            } else {
              return Container();
            }
      },
     ),
     ));
  }
}
