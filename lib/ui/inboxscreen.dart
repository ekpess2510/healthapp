import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/widgets/chatprofile.dart';
import 'package:hexcolor/hexcolor.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  foregroundColor: Colors.green,
        backgroundColor: HexColor('f8f8fb'),
        elevation: 0.0,
        title: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 51),
            child: Text('Inbox',
                style: GoogleFonts.poppins(
                  color: HexColor('4d4c4c'),
                  height: 3.6,
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
      ),
      body: Container(
        color: HexColor('f8f8fb'),
        child: Container(
          margin: EdgeInsets.only(top: 32),
          color: HexColor('f8f8fb'),
          child: ListView(
            children: [
              ChatProfiles(
                docname: 'Pharm, Emmanuel ',
                images: 'assets/image 12.png',
                time: '4:00',
                message:
                    'check the prescription dghjhfgddghjkjhgheywuguiwerfgfq',
              ),
              ChatProfile(
                docname: 'Beckham Pharmacy ',
                images: 'assets/markus-winkler-pOu_UmkOG-0-unsplash 1.png',
                time: '5:00',
                message:
                    'check the prescription dghjhfgddghjkjhgheywuguiwerfgfq',
              ),
              ChatProfile(
                docname: 'Amela Pharmacy ',
                images: 'assets/Rectangle 75.png',
                time: '6:00',
                message:
                    'check the prescription dghjhfgddghjkjhgheywuguiwerfgfq',
              ),
              ChatProfiles(
                docname: 'Red Lab ',
                images: 'assets/image.png',
                time: '8:00',
                message:
                    'check the prescription dghjhfgddghjkjhgheywuguiwerfgfq',
              ),
              ChatProfile(
                docname: 'Lily Pharmacy ',
                images: 'assets/Rectangle 76.png',
                time: '9:00',
                message:
                    'check the prescription dghjhfgddghjkjhgheywuguiwerfgfq',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
