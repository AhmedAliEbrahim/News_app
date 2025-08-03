
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_View_builder.dart';
import 'package:news_app/widgets/news_list_view.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
         mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Cloud",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
           NewsListViewBuilder(
           category: "",
           ),
          ],
        )
      )
    );
  }
}

