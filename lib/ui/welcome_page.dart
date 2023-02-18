import 'package:fashion_app/ui/favorite_page.dart';
import 'package:fashion_app/ui/home_page.dart';
import 'package:fashion_app/ui/settings_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  //menu index selected
  int selectedIndex = 0;

  //List of the menu screen
  List<Widget> _screen = [
    HomePage(),
    FavoritePage(),
    SettingPage(),
  ];

  //Function to update menu index
  void updateMenuIndex(int index){
    setState((){
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/menu.png', height: 40,),
        centerTitle: false,
        backgroundColor: Colors.grey,
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/search.png'),
          ),
        ],
      ),
      body: _screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffAA78E9),
        currentIndex: selectedIndex,
        onTap: updateMenuIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
