import 'package:fg_admin/button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fg_admin/constant.dart';
import 'package:carousel_slider/carousel_options.dart';

import 'forgot_Password.dart';
import 'home.dart';
import 'package:fg_admin/constant.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.linearToEaseOut,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('images/fetto.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.white.withOpacity(0.3),
                                  BlendMode.dstATop),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, bottom: 20.0),
                  child: Center(
                    child: Form(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100.0,
                              //****** LOGO
                              child: Image(
                                image: AssetImage('images/logoo.png'),
                                colorBlendMode: BlendMode.overlay,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40.0,
                              child: Image(
                                image: AssetImage(
                                    'images/F G  T R C K N L G Y.png'),
                                colorBlendMode: BlendMode.overlay,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Login in to ',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'FG',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' TRACKNLGY',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        color: Color(0xFFFF80C9E4),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Row(
                                children: [
                                  Text('Email', style: kTextStyle),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                width: 330.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                  boxShadow: kElevationToShadow[6],
                                ),

                                //***** ENTER EMAIL TEXT FIELD
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: kTxtField.copyWith(
                                      hintText: '  Enter your Email'),
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Password',
                                    style: kTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              width: 330.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                                boxShadow: kElevationToShadow[6],
                              ),

                              //***** ENTER PASSWORD TEXT FIELD

                              child: TextFormField(
                                obscureText: true,
                                decoration: kTxtField.copyWith(
                                    hintText: '  Create Password'),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //******* FORGOT PASSWORD
                                FlatButton(
                                  splashColor: Colors.grey,
                                  minWidth: 10.0,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Password(),
                                      ),
                                    );
                                  },
                                  child: Text("Forgot Password ?",
                                      style: kTextStyle),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              //******* LOGIN BUTTON**
                              child: Button(
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                colour: Color(0xFFFF3D3A3A),
                                buttonTitle: 'Login',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
