 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsPost extends StatelessWidget {
   const NewsPost({super.key, required this.articleModel});
   final ArticleModel articleModel;

   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(6),
           child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(articleModel.image?? ""),
              fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12),
            ),
             height: 300,
           ),
         ),
         SizedBox(
           height: 12,
         ),

         Padding(
           padding: const EdgeInsets.only(left: 6),
           child: Text(articleModel.title,
           style: TextStyle(
           color: Colors.black,
             fontSize: 20,
           ),
             overflow: TextOverflow.ellipsis,
             maxLines: 2,
           ),
         ),
         SizedBox(
           height: 6,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 6),
           child: Text(articleModel.description??"",
             style: TextStyle(
               color: Colors.grey,
               fontSize: 17,
             ),
             overflow: TextOverflow.ellipsis,
             maxLines: 2,
           ),
         ),
       ],
     );
   }
 }
