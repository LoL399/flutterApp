import 'package:flutter/material.dart';
import 'package:movies/routes.dart';
import 'package:movies/signin.dart';
import 'package:movies/ui/user/user_page.dart';

import 'tabs/popular_movies_tab.dart';
import 'tabs/discover_movies_tab.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getTabBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.lime,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            title: Text('DISCOVER'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.movie),
            title: Text('POPULAR'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: Text('User'),
          ),
                    BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: Text('Detail'),
          ),

        ],
      ),
    );
  }

  Widget getTabBody() {
    switch (_currentIndex) {
      case 0:
        return DiscoverMoviesTab();
      case 1:
        return PopularMoviesTab();
      case 2:
        return LoginScreen();
      case 3: 
        return ProfileApp();
      default:
        throw ArgumentError("Tab with index $_currentIndex doesn't exist");
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
