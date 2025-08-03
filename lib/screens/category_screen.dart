import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/item.dart';
import 'package:news_app/widgets/news_list_View_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category, required this.appBarname, });
  final String category;
  final Item appBarname;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(appBarname.name,
        style:TextStyle(
          color: Colors.black
        ),),
      ),
      body: CustomScrollView(
           slivers: [
            NewsListViewBuilder(
              category: category,
            ),
           ],
      ),
    );
  }
}
