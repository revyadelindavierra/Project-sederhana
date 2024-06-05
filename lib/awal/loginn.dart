import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/forgot.dart';
import 'package:tutorial_intro_slider/awal/logdaf.dart';
import 'package:tutorial_intro_slider/awal/regist.dart';
import 'package:tutorial_intro_slider/page/homepage.dart';

class Loginn extends StatefulWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  bool _isPasswordVisible = false;

  List<FocusNode> _focusNodes = List.generate(2, (index) => FocusNode());

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

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
              margin: EdgeInsets.only(top: 65, left: 22),
              child: Text(
                "Welcome back! \nGlad to see you, Again!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      focusNode: _focusNodes[0],
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.people),
                      ),
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(_focusNodes[1]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      focusNode: _focusNodes[1],
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
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
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
                  "Login",
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
                  padding: const EdgeInsets.all(8.0),
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
              height: 36,
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
              height: 56,
            ),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Dont have account?? ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Regist Now ',
                      style: TextStyle(
                        color: Color(0xFF35C2C1),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => regist(),
                            ),
                          );
                        },
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
