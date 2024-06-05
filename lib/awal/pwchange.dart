import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/loginn.dart';

class pww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ceklisss.png',
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Password Changed!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your password has been \n  changed successfully.',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF8391A1),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginn()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1E232C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(280, 50),
              ),
              child: Text(
                'Back to Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
