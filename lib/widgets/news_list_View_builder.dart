
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/item.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category,});
  final String category;


  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  // List<ArticleModel> articles = [];
  // bool isloading = true;
  // @override
  // void initState() {
  //   super.initState();
  //   GeneralNews();
  // }

  // Future<void> GeneralNews() async {
  //   articles= await NewsService(Dio()).getNews();
  //   isloading = false;
  //   setState(() {});
  //
  // }

  var future;
  @override
  void initState() {
    super.initState();
     future=NewsService(Dio()).getNews(
       category:widget.category,
     );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future ,
      builder: (context, AsyncSnapshot) {
        if(AsyncSnapshot.hasData){
      return NewsListView(articles: AsyncSnapshot.data!,
      );
        }
        else if(AsyncSnapshot.hasError){
          return SliverToBoxAdapter(
            child: Text("oops there was an error, try later"),
          );
        }
        else{
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
    },
    );
  }
}