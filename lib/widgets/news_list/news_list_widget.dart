
import 'package:flutter/material.dart';
import 'package:vk/ui_kit/images.dart';

class News{
  final AssetImage imageName;
  final String title;
  final String time;

  News({
    required this.imageName,
    required this.title,
    required this.time,
  });
}

class NewsListWidget extends StatefulWidget {
  const NewsListWidget({super.key});

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  final _news = [
    News(
      imageName: Images.cat,
      title: 'Котики',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Энциклопедия серийных убийц',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Ставрополь',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Погода',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Новости',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Сплетни',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Мстители',
      time: 'вчера в 15:39',
    ),
    News(
      imageName: Images.cat,
      title: 'Не новости',
      time: 'вчера в 15:39',
    ),
  ];

  var _filteredNews = <News>[];

  final _searchController = TextEditingController();

  void _search(){
    final query = _searchController.text;
    if (query.isNotEmpty){
      _filteredNews = _news.where((News news) {
        return news.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredNews = _news;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredNews = _news;
    _searchController.addListener(_search);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey.shade100,
          child: ListView.builder(
              padding: const EdgeInsets.only(top: 70),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: _filteredNews.length,
              itemBuilder: (BuildContext context, int index) {
                final news = _filteredNews[index];
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
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey
                                ),
                              ),
                            ),
                            //const SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(news.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(news.time,
                                  style: const TextStyle(
                                      color: Colors.grey
                                  ),
                                ),
                              ],
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class HeartButton extends StatefulWidget {
  const HeartButton({super.key});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isFavoriteText = false;
  bool isFavorite = false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (isFavorite) {
        _counter--;
      } else {
        _counter++;
      }
      isFavorite = !isFavorite;
      isFavoriteText = !isFavoriteText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: _incrementCounter,
            icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_outline_rounded
            ),
          color: isFavorite ? Colors.red : Colors.grey,
        ),
        Text(
            '$_counter',
          style: TextStyle(
              fontSize: 16,
            color: isFavoriteText ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}

class CommentsButton extends StatefulWidget {
  const CommentsButton({super.key});


  @override
  State<CommentsButton> createState() => _CommentsButton();
}

class _CommentsButton extends State<CommentsButton> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
        });
      },
      icon: const Icon(Icons.textsms_outlined),
      color: Colors.grey,
    );
  }
}
class SendButton extends StatefulWidget {
  const SendButton({super.key});


  @override
  State<SendButton> createState() => _SendButton();
}

class _SendButton extends State<SendButton> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
        });
      },
      icon: const Icon(Icons.subdirectory_arrow_right_rounded),
      color: Colors.grey,
    );
  }
}
