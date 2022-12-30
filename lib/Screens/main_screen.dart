import 'package:agencyflow/Screens/feed.dart';
import 'package:agencyflow/Screens/home_screen.dart';
import 'package:agencyflow/Screens/message_screen.dart';
import 'package:agencyflow/Screens/profile_screen.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Feed(),
    MessageScreen(),
    Profile_Screen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar:
          _createBottomNavigationBar(_onItemTapped, _selectedIndex),
    );
  }
}

Widget _createBottomNavigationBar(
    void Function(int) onItemTapped, selectedIndex) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [AppColors.bgliner1, AppColors.bgliner2],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.08, 1],
        tileMode: TileMode.clamp,
      ),
    ),
    child: BottomNavigationBar(
      // backgroundColor: AppColors.white,
      // onTap: onTapped,
      // elevation: 30,
      // selectedItemColor: AppColors.yellowButton,
      // selectedLabelStyle: TextStyle(fontSize: 10),
      // unselectedLabelStyle: TextStyle(),
      // unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
      onTap: onItemTapped,

      unselectedFontSize: 9,
      selectedFontSize: 9,
      backgroundColor: Colors.transparent,

      //showSelectedLabels: false,
      showUnselectedLabels: false,
      // unselectedItemColor: Colors.white,

      //fixedColor: AppColors.yellowButton,
      // selectedItemColor: AppColors.white,
      //selectedIconTheme: IconThemeData.,
      //unselectedItemColor: AppColors.white,
      fixedColor: Colors.white,

      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.home,
              color: AppColors.grey9,
              size: 30,
            ),
            //     ImageIcon(
            //   AssetImage('assets/images/home.png'),
            //   size: 20,
            // ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.home,
              color: AppColors.white,
              size: 30,
            ),
          ),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.rss_feed_sharp,
              color: AppColors.grey9,
              size: 30,
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.rss_feed_sharp,
              color: AppColors.white,
              size: 30,
            ),
          ),
          label: 'FEED',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.messenger_sharp,
              color: AppColors.grey9,
              size: 30,
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.messenger_sharp,
              color: AppColors.white,
              size: 30,
            ),
          ),
          label: 'MESSAGES',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.manage_accounts,
              color: AppColors.grey9,
              size: 30,
            ),
          ),
          label: 'PROFILE',
          activeIcon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.manage_accounts,
              color: AppColors.white,
              size: 30,
            ),
          ),
          // label: 'PROFILE',
        ),
      ],
    ),
  );
}
