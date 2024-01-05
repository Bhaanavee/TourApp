import 'package:flutter/material.dart';

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
        ],
          ),

        
      );
     
  }
}

class CategoryCard extends StatelessWidget {
  final String title,image;
  final VoidCallback press;
  const CategoryCard({
    super.key, required this.title, required this.image, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation:8,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding:EdgeInsets.symmetric(
                horizontal: 5,vertical: 8.0
              ),
              child: Row(children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),),
          ),
        ),
      ),
    );
  }
}