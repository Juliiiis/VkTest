import 'package:flutter/material.dart';
import 'package:vk/widgets/news_list/news_list_widget.dart';



class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectedTab(int index){
    if(_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text(
              'Главная',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            floating: true,
            flexibleSpace: Container(
              color: Colors.blue.shade400,
            ),
            expandedHeight: 50,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => const ListTile(title: Text('.....'),),
              childCount: 1000,
            ),
          ),
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

