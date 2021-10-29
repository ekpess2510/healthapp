import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('f8f8fb'),
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 54, 24, 0),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: HexColor('abafb3'),
                          ),
                          //    enabled: ,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Beckham',
                          fillColor: Colors.white,
                          filled: true,
                          // disabledBorder: OutlineInputBorder(
                          //     // borderRadius: BorderRadius.circular(8),
                          //     ),

                          border: InputBorder.none),
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: HexColor('1377fe'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
