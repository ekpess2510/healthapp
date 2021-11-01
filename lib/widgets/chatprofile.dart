import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatProfile extends StatelessWidget {
  String docname;
  String message;
  String time;
  String images;
  ChatProfile({
    required this.message,
    required this.time,
    required this.docname,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 80,
            minWidth: 327,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 52,
                    height: 52,
                    child: CircleAvatar(
                      child: Image.asset(images),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          docname,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: HexColor('0a0a0a'),
                          ),
                        ),
                        SizedBox(
                          width: 259,
                          child: Text(
                            message,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: HexColor('757373'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    color: HexColor('A3A1A1')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatProfiles extends StatelessWidget {
  String docname;
  String message;
  String time;
  String images;
  ChatProfiles({
    required this.message,
    required this.time,
    required this.docname,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 80,
            minWidth: 327,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: SizedBox(
                          width: 52,
                          height: 52,
                          child: CircleAvatar(
                            child: Image.asset(images),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        bottom: -2,
                        child: CircleAvatar(
                          radius: 8,
                          child: Image.asset('assets/Ellipse 36.png'),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          docname,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: HexColor('0a0a0a'),
                          ),
                        ),
                        SizedBox(
                          width: 259,
                          child: Text(
                            message,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: HexColor('757373'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    color: HexColor('A3A1A1')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
