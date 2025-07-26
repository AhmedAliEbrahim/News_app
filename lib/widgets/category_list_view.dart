
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/item.dart';

import 'category_card.dart';

class CategoryListView  extends StatelessWidget {
  const CategoryListView({super.key});
  final List<Item> card = const[
    Item(image: "assets/business.avif",
        name: "Business"
    ),
    Item(image: "assets/entertaiment.avif",
        name: "Entertaiment"
    ),
    Item(image: "assets/general.avif",
        name: "General"
    ),
    Item(image: "assets/health.avif",
        name: "Health"
    ),
    Item(image: "assets/science.avif",
        name: "Science"
    ),
    Item(image: "assets/sports.avif",
        name: "Sports"
    ),
    Item(image: "assets/technology.jpeg",
        name: "Technology"
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:card.length,
          itemBuilder: (context,index){
            return CategoryCard(
              cateory: card[index],
            );
          }),
    );
  }
}
