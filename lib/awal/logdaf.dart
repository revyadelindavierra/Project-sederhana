import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/loginn.dart';
import 'package:tutorial_intro_slider/awal/regist.dart';
import 'package:tutorial_intro_slider/page/homepage.dart';

class akhiran extends StatelessWidget {
  const akhiran({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/awal.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 135,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Loginn();
                      },
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                    minimumSize: Size(280, 55),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return regist();
                            },
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55),
                        ),
                        side: BorderSide(
                          width: 2.0,
                          color: Colors.black,
                        ),
                        minimumSize: Size(280, 55),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Color.fromARGB(221, 53, 52, 52),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    RichText(
                      text: TextSpan(
                        text: 'Login as a guest',
                        style: TextStyle(
                          color: Color(0xFF35C2C1),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homee()),
                            );
                          },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
