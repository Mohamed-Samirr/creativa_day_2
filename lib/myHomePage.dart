import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,

          ),
          ),
          InkWell(
            onTap: (){
              print('container clicked');
            },
            child: Container(
             // color: Colors.amber,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                 
            
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/Rectangle 1706.png'),
                fit: BoxFit.cover,
                )
                // color >>>> background image >>> child or icon
            
              ),
              child: Icon(Icons.location_city_outlined,
              size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 20,

          ),
          ElevatedButton(onPressed: (){
            print('elevated button pressed');
          },
           child: Text('elevated button')),
           // icon button and text button , elevated button
           IconButton(onPressed: (){}, icon: Icon(Icons.volume_up)),
            TextButton(onPressed: (){}, child: Text('text button')),
            // image from assets
            Image.asset('assets/Rectangle 1706.png',width: double.infinity,
           // fit: BoxFit.fitWidth,
            ),



        ],
      ),
     
    );
  }
}