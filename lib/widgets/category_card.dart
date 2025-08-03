
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/item.dart';
import 'package:news_app/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cateory , });
   final Item cateory ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CategoryScreen(
            category: cateory.name, appBarname: cateory,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5 ,right: 5),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(cateory.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 120,
          width: 220,
          child: Center(
            child: Text( cateory.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
