import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/widgets/card.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String img = 'assets/Logo.png';
  String service1 = 'assets/markus-winkler-pOu_UmkOG-0-unsplash 1.png';
  String text = 'Get';
  String services1 = 'Pharmacy';
  String thisTitle = 'Get verified medicines';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: HexColor('F8F8FB'),
            margin: const EdgeInsets.fromLTRB(24, 28, 24, 0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    //    enabled: ,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search For a Pharmacy',
                    fillColor: Colors.white,
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                //SIZEDBOX FOR SPACING

                SizedBox(
                  height: 24,
                ),

                MyWidgetClass(
                  img: service1,
                  buttonText: text,
                  title: thisTitle,
                  services: services1,
                ),
                SizedBox(
                  height: 20,
                ),

                MyWidgetClass(
                  img: service1,
                  buttonText: text,
                  title: thisTitle,
                  services: services1,
                ),

                SizedBox(
                  height: 20,
                ),

                MyWidgetClass(
                  img: service1,
                  buttonText: text,
                  title: thisTitle,
                  services: services1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Doctors near you',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: HexColor('0a0a0a'),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          enableFeedback: false,
                          //    onSurface: Colors.transparent,
                          //     shadowColor: Colors.transparent,
                          //    backgroundColor: Colors.transparent
                        ),
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: HexColor('27ae60'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: 'Emmanuel Ekpenyong',
                        docTitle:
                            'Gynacologist, General Physician, Endocrinologist '
                            'M.B.B.S, MRCP (UK), MRCP, Nigeria',
                        starCount: 4,
                        rating: 4.5,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: 'Dr Emmanuel Ugen',
                        docTitle:
                            'Internal Medicine Specialist, Urologist, General PhysicianMBBS, MCPS, MRCGP (UK), Nigeria',
                        starCount: 3,
                        rating: 3.0,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: 'Dr Emmanuel Ugen',
                        docTitle:
                            'Internal Medicine Specialist, Urologist, General PhysicianMBBS, MCPS, MRCGP (UK), Nigeria',
                        starCount: 3,
                        rating: 3.0,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: 'Dr Emmanuel Ugen',
                        docTitle:
                            'Internal Medicine Specialist, Urologist, General PhysicianMBBS, MCPS, MRCGP (UK), Nigeria',
                        starCount: 3,
                        rating: 3.0,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: '',
                        docTitle: '',
                        starCount: 3,
                        rating: 3.0,
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Doctor(
                        doctor: 'assets/Ellipse 31.png',
                        docName: '',
                        docTitle: '',
                        starCount: 3,
                        rating: 3.0,
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
