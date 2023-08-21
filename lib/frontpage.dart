import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue[50],

      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.logo_dev_sharp , size: 80,)  ,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 240,
                      child: Text('Sofware Engineer At Hackaton' ,
                       style:  TextStyle(fontSize: 27),)
                      ),
                  ),
                )  , 
                Expanded(
                  flex: 4,
                  child: Container(   
                    color: Colors.amber[100],                 
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('img/chika.png')),
                    )
                    ),
                ) ,      
              ],
            )
          ),
        ),
      ),

    );
  }
}