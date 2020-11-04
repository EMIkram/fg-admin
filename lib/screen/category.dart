import 'package:flutter/material.dart';
import 'package:fg_admin/constant.dart';

import '../button.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            Image.asset('images/F G  T R C K N L G Y.png', fit: BoxFit.cover),
        backgroundColor: Color(0xFFFF3D3A3A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    Text('  Category Name', style: kTextStyle),
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
                  boxShadow: kElevationToShadow[3],
                ),

                //**** ENTER CATEGORY TEXT FIELD
                child: TextFormField(
                  decoration: kTxtField.copyWith(hintText: '  Enter Name'),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              //***** SAVE BUTTON
              Button(
                onPress: () {},
                buttonTitle: 'Save',
                colour: Color(0xFFFF3D3A3A),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      ' Hope',
                      style: TextStyle(
                        color: Color(0xFFFFA0A0A0),
                        fontFamily: 'Poppin',
                        fontSize: 15.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                width: 330.0,
                height: 40.0,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[3],
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  // borderSide: BorderSide(color: Colors.black38)),
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      ' Manual',
                      style: TextStyle(
                        color: Color(0xFFFFA0A0A0),
                        fontFamily: 'Poppin',
                        fontSize: 15.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                width: 330.0,
                height: 40.0,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[3],
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  // borderSide: BorderSide(color: Colors.black38)),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
