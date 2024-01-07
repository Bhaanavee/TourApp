import 'package:flutter/material.dart';
import 'package:onlinetourapp/model/place_model.dart';

class detailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const detailScreen({super.key, required this.placeInfo});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.placeInfo.name),
      ),
      body: Stack(
        children: [
          Image.network(widget.placeInfo.image,
          width: double.infinity,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.4,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
              children: [
                Row(
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //color: Colors.black,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            
                          ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
                ///
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.placeInfo.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),),
                         SizedBox(
                height: 8.0,
        
              ),
             Row(
              children: [
                // SizedBox(
                //   width: 10,
                // ),
                Icon(Icons.location_on,
                color: Colors.black,),
                SizedBox(
                  width: 5,
                ),
                Text(widget.placeInfo.location,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),),
              ],
             ), 
             SizedBox(
              height: 12,
             ),
               Text('Trip Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        SizedBox(
              height: 10,
             ),
              Text(widget.placeInfo.desc,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),)

                      ],
                    ),
                  ),
                ),
            
              ],
                      ),
            ),),
        ],
      ),
    );
  }
}