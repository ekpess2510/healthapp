import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MyWidgetClass extends StatelessWidget {
  String img;
  String services;
  String title;
  String buttonText;

  MyWidgetClass({
    Key? key,
    required this.img,
    required this.buttonText,
    required this.services,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 80, minWidth: 327),
      child: Card(
        elevation: 0.0,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.fromLTRB(7, 10, 7, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Image
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset(img),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child:

                            //// pharmacy get verified members
                            Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              services,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                height: 1.6,
                                color: HexColor('0A0A0A'),
                              ),
                            ),
                            Text(
                              title,
                              style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  height: 1.8,
                                  color: HexColor('abafb3')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //padding

                  //// button

                  SizedBox(
                    width: 61,
                    height: 33,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: HexColor('f8f8fb'),
                          primary: HexColor('27ae60')),
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Doctor extends StatefulWidget {
  String docName;
  String docTitle;
  String doctor;
  double rating;
  int starCount;

  Doctor({
    Key? key,
    required this.docName,
    required this.docTitle,
    required this.doctor,
    required this.starCount,
    required this.rating,
  }) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: 122, maxWidth: 122, minHeight: 120),
            child: Card(
              elevation: 0.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 43, 12, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.docName,
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.docTitle,
                      softWrap: true,
                      maxLines: 4,
                      style: GoogleFonts.poppins(
                        fontSize: 6,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    StarRating(
                      size: 10,
                      rating: widget.rating,
                      color: Colors.yellowAccent,
                      starCount: widget.starCount,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: -15,
            right: 30,
            child: SizedBox(
              width: 55,
              height: 55,
              child: CircleAvatar(
                //  radius: 50,
                child: Image.asset(widget.doctor),
              ),
            )),
      ],
    );
  }
}
