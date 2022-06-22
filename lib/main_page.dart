import 'package:flutter/material.dart';
import 'package:tugas_akhir_mas_panji/home_page.dart';
import 'package:tugas_akhir_mas_panji/order_page.dart';
import 'package:tugas_akhir_mas_panji/other_page.dart';
import 'package:tugas_akhir_mas_panji/room_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    RoomPage(),
    OrderPage(),
    OtherPage(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color(0xff9E9E9E),
        selectedItemColor: const Color(0xff3267E3),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room),
            label: "Room",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: "Pesanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize),
            label: "Lainnya",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
