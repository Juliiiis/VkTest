import 'package:flutter/material.dart';
import 'package:vk/data/news.dart';
import 'package:vk/data/news_data.dart';
import 'package:vk/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:vk/widgets/main_screen/add_menu_items.dart';
import 'package:vk/widgets/news_item/news_item_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  final _searchController = TextEditingController();

  var _filteredNews = <News>[];

  @override
  void initState() {
    super.initState();
    _filteredNews = news;
    _searchController.addListener(_search);
  }

  void _search() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredNews = news.where((News news) {
        return news.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredNews = news;
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

  String item1 = 'История';
  String item2 = 'Запись';
  String item3 = 'Фото';
  String item4 = 'Клип';
  String item5 = 'Трансляция';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.blue.shade50,
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
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    itemBuilder: (BuildContext context){
                      return MenuItems.choice.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                            child: ListTile(
                              title: Icon(MenuItems.choiceIcons[choice]),
                              leading: Text(choice),
                        ));
                      }).toList();
                    },
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
      bottomNavigationBar: const BottomBar(),
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
