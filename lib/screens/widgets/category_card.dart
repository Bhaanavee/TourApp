import 'package:flutter/material.dart';

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
                  backgroundImage: NetworkImage(image), //if adding through asset-> AssetImage
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