import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OTP extends StatefulWidget {
//le
  final String title;
  OTP({Key? key, required this.title}) : super(key: key);
  @override
  _OTPState createState() => _OTPState(
        verfication: '',
        phone: '',
        codesent: false,
      );
}

class _OTPState extends State<OTP> {
  String verfication;
  String phone;
  bool codesent = false;

  _OTPState({
    required this.codesent,
    required this.phone,
    required this.verfication,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntlPhoneField(
                decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )),
                initialCountryCode: 'NG',
                onChanged: (phoneNumber) {
                  setState(() {
                    phone = phoneNumber.completeNumber;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  verifyPhone();
                },
                child: const Text('Verify'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          const snackBar = SnackBar(content: Text('Login Successful'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        verificationFailed: (FirebaseAuthException e) {
          final snackBar = SnackBar(content: Text("${e.message}"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        codeSent: (String verficationId, int? resendToken) {
          setState(() {
            codesent = true;
            verfication = verficationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            verfication = verificationId;
          });
        },
        timeout: const Duration(seconds: 60));
  }

//  )
//   }
  Future<void> verifyPin(String pin) async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: verfication, smsCode: pin);

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      const snackBar = SnackBar(content: Text("Login Success"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(content: Text("${e.message}"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
