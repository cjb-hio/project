import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wechat/page/BookPage.dart';
import 'package:wechat/page/ChatPage.dart';
import 'package:wechat/page/FindPage.dart';
import 'package:wechat/page/MinePage.dart';

void main() {
  runApp(const WechatApp());
}

class WechatApp extends StatelessWidget {
  const WechatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '微信',
      theme: ThemeData(
          highlightColor: Color.fromRGBO(0, 0, 0, 0),
          splashColor: Color.fromRGBO(0, 0, 0, 0)),
      home: MyHomePage(),
    );
  }
}

List<BottomNavigationBarItem> _items = [
  BottomNavigationBarItem(
      label: '微信',
      activeIcon: SvgPicture.asset(
        'assets/bottom_chat_selected.svg',
        width: 32,
        height: 32,
      ),
      icon: SvgPicture.asset(
        'assets/bottom_chat.svg',
        width: 32,
        height: 32,
      )),
  BottomNavigationBarItem(
      label: '通讯录',
      activeIcon: SvgPicture.asset(
        'assets/bottom_book_selected.svg',
        width: 32,
        height: 32,
      ),
      icon: SvgPicture.asset(
        'assets/bottom_book.svg',
        width: 32,
        height: 32,
      )),
  BottomNavigationBarItem(
      label: '发现',
      activeIcon: SvgPicture.asset(
        'assets/bottom_find_selected.svg',
        width: 32,
        height: 32,
      ),
      icon: SvgPicture.asset(
        'assets/bottom_find.svg',
        width: 32,
        height: 32,
      )),
  BottomNavigationBarItem(
      label: '我的',
      activeIcon: SvgPicture.asset(
        'assets/bottom_mine_selected.svg',
        width: 32,
        height: 32,
      ),
      icon: SvgPicture.asset(
        'assets/bottom_mine.svg',
        width: 32,
        height: 32,
      ))
];
List _pages = [ChatPage(), BookPage(), FindPage(), MinePage()];

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _items,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Color.fromARGB(100, 0, 255, 30),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
