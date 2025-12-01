import 'package:creativa_day_2/coffeApp/details_screen.dart';
import 'package:creativa_day_2/coffeApp/coffe_model.dart';
import 'package:creativa_day_2/coffeApp/home_cubit/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<CoffeModel> coffeeList = [
      CoffeModel(
        name: 'Cappuccino',
        image: 'assets/Rectangle 1706.png',
        price: '\$4.20',
        description: 'Classic cappuccino with frothy milk',
      ),
      CoffeModel(
        name: 'Espresso',
        image: 'assets/Rectangle 1707 (1).png',
        price: '\$3.50',
        description: 'Strong and bold espresso coffee',
      ),
      CoffeModel(
        name: 'Latte',
        image: 'assets/Rectangle 1707.png',
        price: '\$4.00',
        description: 'Smooth latte with steamed milk',
      ),
      CoffeModel(
        name: 'Mocha',
        image: 'assets/Rectangle 1706.png',
        price: '\$4.50',
        description: 'Rich mocha with chocolate',
      ),
    ];
   // String isSelected = 'Cappuccino';
    return BlocProvider(
      create: (context) => homecategoryCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'location',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Bilzen,Tanjungbalai',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/Image 1.png'),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(3),
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff313131),
                  ),
                  child: TextField(
                    //
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Color(0xff989898)),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search coffe',
                      iconColor: Colors.white,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image 8 1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 15,
                      child: Container(
                        alignment: Alignment.center,
                        height: 26,
                        width: 60,
                        child: Text('PROMO'),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Text(
                        'Buy one \n get one Free',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          //backgroundColor: Colors.black26,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 38,
                  child: BlocBuilder<homecategoryCubit, String>(
                    builder: (context, state) {
                      return ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<homecategoryCubit>()
                                  .changeCategory('Cappuccino');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: state == 'Cappuccino'
                                    ? Colors.brown
                                    : Colors.grey.shade200,
                              ),
                              child: Text(
                                'Cappuccino',
                                style: TextStyle(
                                  color: state == 'Cappuccino'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<homecategoryCubit>()
                                  .changeCategory('Espresso');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: state == 'Espresso'
                                    ? Colors.brown
                                    : Colors.grey.shade200,
                              ),
                              child: Text(
                                'Espresso',
                                style: TextStyle(
                                  color: state == 'Espresso'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<homecategoryCubit>()
                                  .changeCategory('Latte');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: state == 'Latte'
                                    ? Colors.brown
                                    : Colors.grey.shade200,
                              ),
                              child: Text(
                                'Latte',
                                style: TextStyle(
                                  color: state == 'Latte'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: coffeeList.length,
                  itemBuilder: (context, index) {
                    final coffee = coffeeList[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to details screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(coffee: coffee),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(coffee.image),
                              SizedBox(height: 10),
                              Text(
                                coffee.name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                coffee.price,
                                style: TextStyle(
                                  color: Color(0xffC67C4E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
