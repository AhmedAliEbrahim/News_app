
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

import 'news_post.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel>articles = [];
  bool isloading = true;
  @override
  void initState()  {
    super.initState();
     getGeneralNews();
  }
  Future<void> getGeneralNews() async {
    articles= await NewsService(Dio()).getNews();
     isloading = false;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getNews();
    return isloading? SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator())): SliverList(
          delegate: SliverChildBuilderDelegate(
                childCount: articles.length,
                (context,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsPost(
              articleModel: articles[index],
            ),
          );
        }),
        );
      
  }
}
