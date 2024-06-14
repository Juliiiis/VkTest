
import 'package:flutter/material.dart';
import 'package:vk/data/news.dart';
import 'package:vk/widgets/news_item/widgets/comments_button.dart';
import 'package:vk/widgets/news_item/widgets/heart_button.dart';
import 'package:vk/widgets/news_item/widgets/send_button.dart';

class NewsItemWidget extends StatefulWidget {
  const NewsItemWidget({super.key, required this.newsItem});

  final News newsItem;

  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}


class _NewsItemWidgetState extends State<NewsItemWidget> {


  @override
  Widget build(BuildContext context) {
    final news = widget.newsItem;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                      ),
                    ),
                  ),
                ),
                //const SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(news.title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(news.time,
                        style: const TextStyle(
                          fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image(image: news.imageName),
            const SizedBox(height: 10),
            const Row(
              children: [
                HeartButton(),
                CommentsButton(),
                SendButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}






