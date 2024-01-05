import 'package:flutter/material.dart';
import 'package:onlinetourapp/screens/home_Screen.dart';
import 'package:onlinetourapp/screens/explore_Screen.dart';
//import 'package:onlinetourapp/screens/profile_Screen.dart';
import 'package:onlinetourapp/screens/wish_List.dart';
class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  int currentValue=0;
  List<Widget> screens=[
    homeScreen(),
    exploreScreen(),
    wishList(),
    //profileScreen()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentValue,
          selectedItemColor: Colors.purpleAccent ,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: false,
          selectedFontSize: 18,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.travel_explore),label: "EXPLORE"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_sharp),label: "WISHLIST"),      
           // BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "PROFILE"),
            
            ],
            onTap: (value) {
              setState(() {
                currentValue=value;
              } );
            // if(currentValue==3){
            //   currentValue-=1;
            // }
           
              
            },
           

      ),
      body: screens[currentValue],
      
    );
  }
}