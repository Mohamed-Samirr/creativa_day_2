import 'package:creativa_day_2/weatherApp/features/home/viewModel/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenWeather extends StatelessWidget {
  const HomeScreenWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getWaetherData(),
      child: Scaffold(
        backgroundColor: Color(0xff8E78C8),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (ctx, state) {
            if (state is HomeLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeSuccess) {
              
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/Weather _))10 18.png'),
                  
                    Text(
                      '${state.data.currentTemperature.toInt()}°',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Precipitations',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('max temp: ${state.data.maxTemperature}°',
                             style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                            SizedBox(width: 20),
                            Text('min temp: ${state.data.minTemperature}°',
                             style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                
                          ],
                        ),
                        Image.asset('assets/House.png'),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          //margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white)

                          ),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Today',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,)
                                    ),
                                    
                                    Text('21 july',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,))
                                  ],
                                ),
                              
                              Divider(color: Colors.white,),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('19°C'),
                                      
                                      Image.asset('assets/Weather _))10 18 (1).png'),
                                      SizedBox(height: 10),
                                      Text('5.00'),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('19°C',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,

                                      ),
                                      ),
                                      
                                      Image.asset('assets/Weather _))10 18 (1).png'),
                                      SizedBox(height: 10),
                                      Text('5.00',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,

                                      ),
                                      ),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('19°C'),
                                      
                                      Image.asset('assets/Weather _))10 18 (1).png'),
                                      SizedBox(height: 10),
                                      Text('5.00'),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('19°C'),
                                      
                                      Image.asset('assets/Weather _))10 18 (1).png'),
                                      SizedBox(height: 10),
                                      Text('5.00'),

                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                          
                        ),
                
                
                
                    
                
                
                
                
                
                  ],
                ),
              );
            } else if (state is HomeFailure) {
              return Center(
                child: Text('Error: ${state.message}'),
              );
            } else {
            return Container();}
          },
        ),
      ),
    );
  }
}
