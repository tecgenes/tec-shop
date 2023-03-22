import 'package:flutter/material.dart';

class BottomBarThemeStyle{
  static BottomNavigationBarThemeData bottomBarStyle(){
    return const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      // backgroundColor: Colors.white,
      selectedItemColor: Color(0xFF734CC9),
      unselectedItemColor: Colors.black38,
      selectedIconTheme: IconThemeData(
          color: Color(0xFF734CC9),
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black38,
      ),
      elevation: 0.0,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: TextStyle(
        color: Color(0xFF734CC9),
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black38,
      ),
    );
  }
}

// selectedItemColor: const Color(0xFF734CC9),
// selectedIconTheme: const IconThemeData(
// color: Color(0xFF734CC9),
// ),