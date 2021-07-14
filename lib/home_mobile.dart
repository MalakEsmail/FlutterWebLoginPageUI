import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 70.0, vertical: 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                buildCustomTextField('Email Address', 'you@example.com', false),
                SizedBox(
                  height: 20.0,
                ),
                buildCustomTextField('Password', 'Insert your password', true),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                      color: Color(0XFFF3630B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Dont Have an account ?',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(color: Color(0XFFF3630B), fontSize: 18))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildCustomTextField(String title, String hintText, bool isPassowrd) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      TextFormField(
        cursorColor: Color(0XFFF3630B),
        obscureText: isPassowrd,
        decoration: InputDecoration(hintText: hintText),
      )
    ],
  );
}
