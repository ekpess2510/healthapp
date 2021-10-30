import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/ui/searchscreen.dart';
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
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search For a Pharmacy',
                    fillColor: Colors.white,
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
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
      // bottomNavigationBar: const NavBarClass(),
    );
  }
}
