import 'package:creativa_day_2/weatherApp/features/sevenDays/viewModel/cubit/seven_days_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SevenDaysScreen extends StatelessWidget {
  const SevenDaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => SevenDaysCubit(),
     child: Scaffold(
      backgroundColor: Color(0xff3E2D8F),
      body: BlocBuilder<SevenDaysCubit, SevenDaysState>(
      builder: (context, state) {
         if (state is SevenDaysLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SevenDaysuccess) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('North America '),
                  Text('Max: 24° Min:18°'),
                  SizedBox(height: 20),
                  Text('7-Days Forecasts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                  )

                ],
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
