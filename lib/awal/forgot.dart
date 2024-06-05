import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/loginn.dart';
import 'package:tutorial_intro_slider/awal/otp.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 45, left: 2),
            child: Center(
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 15),
            child: Column(
              children: [
                Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: Icon(Icons.people),
              ),
            ),
          ),
          SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OtpVerification();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                ),
                minimumSize: Size(450, 55),
              ),
              child: Text(
                "Send Code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 23),
          Text.rich(
            TextSpan(
              text: 'Remember Password? ',
              style: TextStyle(
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: 'Login ',
                  style: TextStyle(
                      color: Color(0xFF35C2C1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginn()),
                      );
                    },
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
