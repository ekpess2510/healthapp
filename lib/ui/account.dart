import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountPage extends StatelessWidget {
  // AccountPage({
  //   required this.img,
  // });
  @override
  Widget build(BuildContext context) {
    String img = 'assets/Logo.png';
    return Scaffold(
      backgroundColor: HexColor('f8f8fb'),
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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 46, 0, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 88,
                  height: 88,
                  child: CircleAvatar(
                    child: Image.asset('assets/Ellipse.png'),
                    //  maxRadius: 88,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Winfred David',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: HexColor('0a0a0a'),
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            width: 57,
                            height: 57,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.person_outline_outlined,
                                color: Colors.black,
                                size: 28,
                              ),
                              backgroundColor: Colors.white,
                            )),
                        SizedBox(height: 6),
                        Text(
                          'Saved \n Doctors',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 57,
                            height: 57,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.article_outlined,
                                color: Colors.black,
                                size: 28,
                              ),
                              backgroundColor: Colors.white,
                            )),
                        SizedBox(height: 6),
                        Text(
                          'Saved \n Articles',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 57,
                            height: 57,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                                size: 28,
                              ),
                            )),
                        const SizedBox(height: 6),
                        Text(
                          'Health \n Diary',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 48, 30, 0),
                  constraints: const BoxConstraints(
                    minHeight: 230,
                    minWidth: 280,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(26, 18, 6, 23),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  'Appointments',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('807C7C'),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chevron_right))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(26, 18, 6, 23),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.medical_services_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  'Pill\'s Reminder',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('807C7C'),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chevron_right))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(26, 18, 6, 23),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  'My Doctor\'s',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('807C7C'),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chevron_right))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(26, 18, 6, 23),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  'Insurance Plan',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('807C7C'),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chevron_right))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
