
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews() async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=ec3f2c265aa44620bb4f9c6c676b6463');
   Map<String,dynamic> Jasondata= response.data;

   List<dynamic> articles= Jasondata["articles"] ;

   List<ArticleModel> articlelist=[];

   for( var article in articles){

     ArticleModel articleModel=
     ArticleModel(image: article["urlToImage"],
       description: article["description"],
       title: article["title"],);

     articlelist.add(articleModel);
   }
return articlelist;
  }
}