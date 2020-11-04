import 'package:flutter/material.dart';
import 'package:fg_admin/button.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Image.asset('images/F G  T R C K N L G Y.png', fit: BoxFit.cover),
          backgroundColor: Color(0xFFFF3D3A3A),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              //***** PROFILE PICTURE
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/scooter1.png'),
                    radius: 60.0,
                  ),
                ),
                //**** CAMERA ICON FOR UPLOAD PROFILE PIC
                Positioned(
                  top: 78.0,
                  left: 75.0,
                  child: IconButton(
                    icon: Icon(Icons.camera_alt_rounded),
                    onPressed: () {},
                    iconSize: 40.0,
                  ),
                )
              ]),
              SizedBox(height: 25.0),
              Divider(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Personal info',
                      style: TextStyle(
                          fontFamily: 'PoppinBold',
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              //***** NAME TEXT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.grey,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 240.0,
                          child: TextFormField(
                            //**********
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10.0,
              ),
              //***** CURRENT PASSWORD TEXT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    // Divider(
                    //   height: 10.0,
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Password',
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 240.0,
                          child: TextFormField(
                            //**********
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10.0,
              ),
              //***** NEW PASSWORD TEXT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Password',
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 240.0,
                          child: TextFormField(
                            //**********
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10.0,
              ),

              //***** RE-ENTER NEW PASSWORD TEXT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Re-enter New Password',
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 240.0,
                          child: TextFormField(
                            //**********
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Button(
                onPress: () {},
                buttonTitle: 'Update Profile',
                colour: Color(0xFFFF3D3A3A),
              )
            ]),
          ),
        ));
  }
}
