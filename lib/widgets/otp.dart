import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OTP extends StatefulWidget {
//

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  //uncomment String verfication;
  late String phone;
  bool codesent = false;

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
                  //uncomment verifyPhone();
                },
                child: const Text('Verify'),
              )
            ],
          ),
        ),
      ),
    );
  }

  //uncoment Future<void> verifyPhone() async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(phoneNumber: phone, verificationCompleted: (PhoneAuthCredential credential) async {
  //     await FirebaseAuth.instance.signInWithCredential(credential);
  //     final snackBar= SnackBar(content: Text('Login Successful'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   },
  //       verificationFailed: (FirebaseAuthException e){
  //         final snackBar= SnackBar(content: Text("${e.message}"));
  //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //       }, codeSent: (String verificationId, int resendToken){
  //     setState(() {
  //       codesent = tue;
  //       verfication = verificationId;
  //     });
  //       }, codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
  // }
}
