import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/loginn.dart';
import 'package:tutorial_intro_slider/page/homepage.dart';

class regist extends StatefulWidget {
  const regist({Key? key}) : super(key: key);

  @override
  State<regist> createState() => _registState();
}

class _registState extends State<regist> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibleConfirmation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              margin: EdgeInsets.only(top: 45, left: 22),
              child: Center(
                child: Text(
                  " Hello! Register to get started",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.people),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
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
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: !_isPasswordVisibleConfirmation,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisibleConfirmation
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisibleConfirmation =
                                  !_isPasswordVisibleConfirmation;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return homee();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55),
                  ),
                  minimumSize: Size(280, 55),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('Or Register with'),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/google.jpg',
                  height: 40.0,
                ),
                SizedBox(width: 16.0),
                Image.asset(
                  'images/facebook.jpg',
                  height: 40.0,
                ),
                SizedBox(width: 16.0),
                Image.asset(
                  'images/ios.png',
                  height: 40.0,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text.rich(
              TextSpan(
                text: 'Already have an account?? ',
                style: TextStyle(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'Login Now ',
                    style: TextStyle(
                        color: Color(0xFF35C2C1),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginn(),
                          ),
                        );
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
