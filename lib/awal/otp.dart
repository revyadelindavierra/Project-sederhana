import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/newpw.dart';

class OtpVerification extends StatelessWidget {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 65, left: 2),
            child: Center(
              child: Text(
                "OTP Verification",
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
                  "Enter the verification code we just sent to your email address.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          otpfields(),
          SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Newpassword();
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
                "Verify",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text.rich(
            TextSpan(
              text: 'Didn’t received code? ',
              style: TextStyle(
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: 'Resend ',
                  style: TextStyle(
                      color: Color(0xFF35C2C1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget otpfields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => SizedBox(
          width: 60,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            focusNode: _focusNodes[index],
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                _focusNodes[index].nextFocus();
              }
            },
            onSubmitted: (value) {
              if (index < 3) {
                _focusNodes[index + 1].requestFocus();
              }
            },
          ),
        ),
      ),
    );
  }
}
