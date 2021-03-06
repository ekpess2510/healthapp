import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/ui/inboxscreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String formattedDate = DateFormat('kk:mm').format(now);
    dynamic currentTime = DateFormat.jm().format(DateTime.now());
    String phone = '+2347069702347';
    String pharmaname = 'Beckham Pharmacy';
    String address = 'Uyo Akwa Ibom State';
    String img = 'assets/Logo.png';
    String asset1 = 'assets/markus-winkler-pOu_UmkOG-0-unsplash 1.png';

    _makingCall() async {
      const url = 'tel:+2347069702347';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw ' could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: HexColor('F8F8FB'),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  constraints:
                      const BoxConstraints(minWidth: 327, minHeight: 126),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 36, 28),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(asset1),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pharmaname,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            address,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#ABAFB3'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InboxScreen()));
                      },
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.chat_outlined,
                            color: Colors.black,
                            size: 10,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Chat',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          //onSurface: Colors.green,
                          side: BorderSide(color: HexColor('00a651')))),
                  OutlinedButton(
                      onPressed: _makingCall,
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.call_outlined,
                            color: Colors.black,
                            size: 10,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Call',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          //onSurface: Colors.green,
                          side: BorderSide(color: HexColor('00a651')))),
                  OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.black,
                            size: 10,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Reviews',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          //onSurface: Colors.green,
                          side: BorderSide(color: HexColor('00a651')))),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Text(
                'Products',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 32, 0, 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/covid.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Covid-19',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/bp.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Blood\nPressure',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/pills.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Pain killers',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/singlepill.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Stomach',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/pill pink.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Heart',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/pill yellow.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Diabetes',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/pill green.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Neuro Pill',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/pill group.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Immune\nSystem',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 74,
                              height: 74,
                              child: Container(
                                child: Image.asset('assets/drug abuse.png'),
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Others',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: HexColor('0a0a0a'),
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 39,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
