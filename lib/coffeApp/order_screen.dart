import 'package:creativa_day_2/coffeApp/home_cubit/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => orderCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'order',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 154,
                      height: 40,

                      child: GestureDetector(
                        onTap: () {
                          
                          
                        },
                        child: Center(
                          child: Text(
                            'deliver',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},

                      child: Container(
                        width: 154,
                        height: 40,
                        child: Center(
                          child: Text(
                            'pick up',
                            style: TextStyle(color: Colors.brown, fontSize: 16),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),

                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Delivery Address',

                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                'Jl. Kpg Sutoyo',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      children: [Icon(Icons.edit), Text('Change Address')],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      children: [Icon(Icons.note_add), Text('add note')],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: Row(
                  children: [
                    Image.asset('assets/Rectangle 1706.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('cappaccino'),
                        Text(
                          'with chocolate',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),

                    Spacer(),

                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.remove_circle_outline),
                    ),
                    SizedBox(width: 10),

                    Text(''),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {},

                      child: Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
