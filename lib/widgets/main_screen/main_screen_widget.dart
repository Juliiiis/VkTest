import 'package:flutter/material.dart';
import 'package:vk/data/news.dart';
import 'package:vk/ui_kit/images.dart';
import 'package:vk/widgets/news_item/news_item_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  final _searchController = TextEditingController();

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

  @override
  void initState() {
    super.initState();
    _filteredNews = _news;
    _searchController.addListener(_search);
  }

  void _search() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredNews = _news.where((News news) {
        return news.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredNews = _news;
    }
    setState(() {});
  }

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }
  void _onTabAvatar(){
    Navigator.of(context).pushNamed('/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.grey.shade100,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                leading: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: _onTabAvatar,
                      child: const CircleAvatar(),
                  ),
                ),
                title: const Text(
                  'Главная',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                floating: true,
                flexibleSpace: Container(
                  color: Colors.white,
                ),
                actions:  <Widget>[
                  IconButton(
                    color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline),
                  ),
                  IconButton(
                    color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                  ),
                ],
                /*bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(60),
                  child: Padding(
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
                ),*/
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final news = _filteredNews[index];
                    return NewsItemWidget(newsItem: news);
                  },
                  childCount: _filteredNews.length,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Сервисы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Чаты',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: 'Клипы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Видео',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}

/*  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Главная'),
        ),
        body:  IndexedStack(
          index: _selectedTab,
          children: const [
            NewsListWidget(),
            Text('Сервисы'),
            Text('Чаты'),
            Text('Клипы'),
            Text('Видео'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              label: 'Сервисы',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Чаты',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: 'Клипы',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: 'Видео',
            ),
          ],
          onTap: onSelectedTab,
        ),
      );
    }
  }*/
