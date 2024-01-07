import 'package:flutter/material.dart';
import 'package:onlinetourapp/screens/profile_Screen.dart';
class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage:
             NetworkImage('https://lh3.googleusercontent.com/-U7qcqFn85WA/XrY7RdJSm-I/AAAAAAAAAAM/0SKE7zxko1095cE0Qmsq-eQ8pzYtsn3-QCLcBGAsYHQ/s1600/1589000991676364-0.png'),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 40,
              // ),
              Text('''Welcome to
  EXPLORE''',
  // textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold
          ),),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("The Online Tour Recommendation App\nThe Indian cities Edition ",
          textAlign: TextAlign.center,
          
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 20,
          ),
          
          // RawMaterialButton(onPressed: ),
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> profileScreen()));
            },
            child: Container(
              height: 55,
              width: 180,
              alignment: Alignment.center,
              // color: Colors.black,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Get started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                  ),)
                ],
              ),

              
            
          ),
          ),
          
        ],
      ),
    );
  }
}