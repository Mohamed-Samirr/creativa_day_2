import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        actions: [
          Icon(Icons.hearing_outlined),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Rectangle 1706.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('cappuccino',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('with Chocolate',),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 44,
              child: Row(
                children: [
                  Image.asset('assets/Rating.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('4.8'),
                  Text('(230)',style: TextStyle(color: Colors.grey),),
                  Spacer(),
                  Image.asset('assets/Frame 19.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/Frame 20.png'),

                ],
              ),
              

              
            ),
            SizedBox(
              height: 20,

            ),
            Text('description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More'),
            SizedBox(
              height: 20,
            ),
            Text('size'
              
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text('S')),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text('M')),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text('L')),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('price'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('\$4.20',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC67C4E)
                      ),),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (){}, child: Text('buy now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC67C4E),
                    minimumSize: Size(217,55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                  ),
                  )
                ],
              ),

            )

            
          ],
        ),
      ),
      



    );
  }
}