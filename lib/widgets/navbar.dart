import 'package:flutter/material.dart';
import 'package:health/ui/cart.dart';
import 'package:health/ui/homescrn.dart';
import 'package:health/ui/inboxscreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarClass extends StatefulWidget {
  const NavBarClass({Key? key}) : super(key: key);

  @override
  _NavBarClassState createState() => _NavBarClassState();
}

class _NavBarClassState extends State<NavBarClass> {
  String img = 'assets/Logo.png';
  int _selectedBar = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    CartScreen(),
    InboxScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            Expanded(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 219),
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: HexColor('f8f8fb'),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 88,
                                  height: 88,
                                  child: CircleAvatar(
                                    child: Image.asset('assets/Ellipse.png'),
                                    //  maxRadius: 88,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Text(
                                    'Winfred David',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('0a0a0a'),
                                    ),
                                  ),
                                ),
                                Text(
                                  '+2348123450956',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor('abafb3'),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(19, 20, 19, 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'About Us',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.medication,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'Online Pharmacy',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.water_damage_outlined,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'Home Nursing Care',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.elderly_outlined,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'Elderly Care',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.science_outlined,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'Laboratory Collection ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.more_vert_outlined,
                                size: 16,
                                color: HexColor('00a651'),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text(
                                'All Services',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: HexColor('807c7c'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 42,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19, 20, 19, 20),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 16,
                          color: HexColor('00a651'),
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Tell Your Friend',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: HexColor('807c7c'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          size: 16,
                          color: HexColor('00a651'),
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Feedback & Contact Us',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: HexColor('807c7c'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        backgroundColor: HexColor('#F8F8FB'),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 23,
              width: 122,
              child: Image.asset(img),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: HexColor('#0A0A0A'),
              )),
        ],
      ),
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
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedBar,
        //  selectedItemColor: ,
        onTap: _onItemTapped,
      ),
    );
  }
}
