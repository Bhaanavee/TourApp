import 'package:flutter/material.dart';
import 'package:onlinetourapp/model/place_model.dart';

class Recommended extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const Recommended({
    Key? key, required this.placeInfo, required this.press,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press ,
      child: Material(
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
      ),
    );
  }
}

