import 'package:flutter/material.dart';
import 'package:onlinetourapp/model/place_model.dart';
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
                  image:"onlinetourapp\images\Welcome.jpeg",  //add an image asset of chennai
                  title: "Chennai",
                ),
                   CategoryCard(
                  press:(){},
                  image:"onlinetourapp\images\Welcome.jpeg", //add an image asset of bangalore
                  title: "Bangalore",
                ),
                   CategoryCard(
                  press:(){},
                  image:"onlinetourapp\images\Welcome.jpeg", //add an image asset of mumbai
                  title: "Mumbai",
                ),
                   CategoryCard(
                  press:(){},
                  image:"onlinetourapp\images\Welcome.jpeg", //add an image asset of ahmedabad
                  title: "Ahmedabad",
                ),
                   CategoryCard(
                  press:(){},
                  image:"onlinetourapp\images\Welcome.jpeg", //add an image asset of hyderabad
                  title: "Hyderabad",
                ),
                   CategoryCard(
                  press:(){},
                  image:"onlinetourapp\images\Welcome.jpeg", //add an image asset of delhi
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
                        press: () {  },),
                         
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

class Recommended extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const Recommended({
    Key? key, required this.placeInfo, required this.press,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
       borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover ,
                          image: NetworkImage(placeInfo.image))
                ),
            
              ),
            ),
            SizedBox(
              height: 8.0,
      
            ),
            SizedBox(
              width: 10,
            ),
            Text(placeInfo.name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 8.0,
      
            ),
           Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.location_on,
              color: Colors.black,),
              SizedBox(
                width: 20,
              ),
              Text(placeInfo.location,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),)
            ],
           ), 
          ],
        ),
      ), 
      ),
    );
  }
}

