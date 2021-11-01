import 'package:flutter/material.dart';
import 'package:health/ui/account.dart';
import 'package:health/ui/cart.dart';
import 'package:health/ui/homescrn.dart';
import 'package:health/ui/inboxscreen.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:google_fonts/google_fonts.dart';

class NavBarClass extends StatefulWidget {
  const NavBarClass({Key? key}) : super(key: key);

  @override
  _NavBarClassState createState() => _NavBarClassState();
}

class _NavBarClassState extends State<NavBarClass> {
  String img = 'assets/Logo.png';
  int _selectedBar = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const CartScreen(),
    const InboxScreen(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedBar,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        //selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: HexColor('27ae60')),
        selectedItemColor: HexColor('27ae60'),
        showUnselectedLabels: true,
        unselectedIconTheme: IconThemeData(
          color: HexColor('a3a1a1'),
        ),
        unselectedItemColor: HexColor('a3a1a1'),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedBar,
        //  selectedItemColor: ,
        onTap: _onItemTapped,
      ),
    );
  }
}
