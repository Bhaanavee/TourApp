import 'package:flutter/material.dart';
import 'package:onlinetourapp/model/place_model.dart';
import 'package:onlinetourapp/screens/detail_screen.dart';
import 'package:onlinetourapp/screens/recommeded.dart';
import 'package:onlinetourapp/screens/widgets/category_card.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("HELLO,", style: TextStyle(letterSpacing: 1.5),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Explore new places',
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(100)
            ,
            elevation: 5,
            child: Container(
          
              // color: Colors.grey,
              width: 250,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Enter your destination...",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                        prefixIcon: Icon(Icons.search_outlined),iconColor: Colors.white,
                        // enabledBorder:InputBorder.none,
                        // focusedBorder: InputBorder.none
                         ),
                      ),
                    ),
                    
                  ],
                ),
              ),
          ),
          //Category
          SizedBox(
            height: 15,
          ),
          Text('Category',
          //textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 20,
          ),
          Container(
            height:55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Row(
                       children: [
                CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/chennai-city-water-color-panoramic-260nw-419140405.jpg",  //add an image asset of chennai
                  title: "Chennai",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/vector-panoramic-water-color-illustration-260nw-383431900.jpg", //add an image asset of bangalore
                  title: "Bangalore",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-illustration/red-skyline-mumbai-formerly-called-260nw-1382984345.jpg", //add an image asset of mumbai
                  title: "Mumbai",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/ahmedabad-city-water-color-panoramic-260nw-419140417.jpg", //add an image asset of ahmedabad
                  title: "Ahmedabad",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/abstract-hyderabad-skyline-color-landmarks-260nw-511968295.jpg", //add an image asset of hyderabad
                  title: "Hyderabad",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://st4.depositphotos.com/1921043/39325/v/1600/depositphotos_393252400-stock-illustration-delhi-india-city-skyline-color.jpg", //add an image asset of delhi
                  title: "Delhi",
                ),
              ],
                    ),
                  ],
                ),
              ],
            
            ),
          ),
           //Recommended
          SizedBox(
            height: 10,
          ),
          Text('Recommended',
          //textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 300,
              child:ListView.builder(
                itemCount: places.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                      children: [
                        Recommended(placeInfo: places[index], 
                        press: () { 
                          Navigator.push(context, MaterialPageRoute(builder: 
                          (context) => detailScreen(
                            placeInfo: places[index],)
                           
                           )
                           );
                         },),
                         
                      ],
                    ),
                );
              })
              
            ),
          
        ],
          ),

        
      );
     
  }
}

