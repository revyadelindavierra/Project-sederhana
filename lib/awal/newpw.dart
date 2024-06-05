import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/pwchange.dart';

class Newpassword extends StatefulWidget {
  @override
  _NewpasswordState createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 65, left: 2),
            child: Center(
              child: Text(
                "Create new password ",
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
                  "Your new password must be unique from those previously used.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              focusNode: _focusNodes[0],
              obscureText: !_isPasswordVisible,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(_focusNodes[1]);
              },
              decoration: InputDecoration(
                labelText: 'New Password',
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              focusNode: _focusNodes[1],
              obscureText: !_isPasswordVisible,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
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
              onFieldSubmitted: (value) {
                // Handle form submission
              },
            ),
          ),
          SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return pww();
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
                "Reset Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
