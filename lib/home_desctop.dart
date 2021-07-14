import 'package:flutter/material.dart';

class HomeDesctop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Container(
              width: double.infinity,
              height: 650,
              child: Padding(
                padding: EdgeInsets.all(35),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          buildCustomTextField(
                              'Email Address', 'you@example.com', false),
                          SizedBox(
                            height: 25.0,
                          ),
                          buildCustomTextField(
                              'Password', 'Insert your password', true),
                          SizedBox(
                            height: 25.0,
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
                            height: 30,
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
                          SizedBox(height: 23.0,),
                          Center(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Dont Have an account ?',
                                  style: TextStyle(color: Colors.black,fontSize: 18)),
                              TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(color: Color(0XFFF3630B),fontSize: 18))
                            ])),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Material(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset(
                            'images/login.jpg',
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
