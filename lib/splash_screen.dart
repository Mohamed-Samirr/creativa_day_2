import 'package:creativa_day_2/home_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image 3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('coffe so good\n yourtaste puds \nwill love it ',
            textAlign: TextAlign.center,
            style: TextStyle(
              
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.w600,

            ),),
            SizedBox(
              height: 20,
            ),
            Text('The best grain, the finest roast, the powerful flavor.',
            style: TextStyle(
              color: Color.fromRGBO(169, 169, 169, 1),
              fontSize: 14,
            ),),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 317,
              height: 54,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white


              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo googleg 48dp.png'),
                    SizedBox(width: 10,),
                    Text('continue with google')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
        
      ),


    );
  }
}