import 'package:creativa_day_2/coffeApp/coffe_model.dart';
import 'package:creativa_day_2/coffeApp/home_cubit/cubit/home_cubit.dart';
import 'package:creativa_day_2/coffeApp/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  final CoffeModel coffee;
  const DetailsScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => detailsCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [SvgPicture.asset('assets/Heart.svg'), SizedBox(width: 20)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(coffee.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 20),
              Text(
                coffee.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text('with Chocolate'),
              SizedBox(height: 10),
              SizedBox(
                //width: double.infinity,
                height: 44,
                child: Row(
                  children: [
                    Image.asset('assets/Rating.png'),
                    SizedBox(width: 10),
                    Text('4.8'),
                    Text('(230)', style: TextStyle(color: Colors.grey)),
                    Spacer(),
                    Image.asset('assets/Frame 19.png'),
                    SizedBox(width: 10),
                    Image.asset('assets/Frame 20.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(coffee.description),
              SizedBox(height: 20),
              Text('size'),
              SizedBox(height: 10),
              BlocBuilder<detailsCubit, String>(
                builder: (context, selectedSize) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<detailsCubit>().changeSize('S');
                        },
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedSize == 'S'
                                ? Color(0xffC67C4E)
                                : Colors.white,
                            border: Border.all(color: Colors.brown),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('S')),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          context.read<detailsCubit>().changeSize('M');
                        },
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedSize == 'M'
                                ? Color(0xffC67C4E)
                                : Colors.white,
                            border: Border.all(color: Colors.brown),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('M')),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          context.read<detailsCubit>().changeSize('L');
                        },
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: selectedSize == 'L'
                                ?Color(0xffC67C4E)
                                : Colors.white,
                            border: Border.all(color: Color(0xffC67C4E)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('L')),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('price'),
                        SizedBox(height: 5),
                        Text(
                          coffee.price,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC67C4E),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // navigate to order screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'buy now',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC67C4E),
                        minimumSize: Size(217, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
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
