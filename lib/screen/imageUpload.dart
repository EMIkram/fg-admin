import 'package:fg_admin/button.dart';
import 'package:flutter/material.dart';
import 'package:fg_admin/constant.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  int _value = 1;
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  //****** IMAGE TITLE TEXT FIELD
                  children: [
                    Text('Title', style: kTextStyle),
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

                  //***** ENTER IMAGE TITLE TEXT FIELD
                  child: TextFormField(
                    decoration:
                        kTxtField.copyWith(hintText: '  Enter Image Title'),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Text('Enter Image Description', style: kTextStyle),
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

                //*** IMAGE UPLOAD DESCRIPTION
                child: TextFormField(
                  decoration:
                      kTxtField.copyWith(hintText: '  Enter Image Description'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Text('Category', style: kTextStyle),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              //***** IMAGE CATEGORY
              Container(
                child: DropdownButton(
                    hint: Text(
                      '  Select Category',
                      style: TextStyle(color: Colors.grey),
                    ),
                    underline: SizedBox(),
                    isExpanded: true,
                    //isDense: true,
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "First Item",
                          style: TextStyle(color: Colors.grey),
                        ),
                        value: 1,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
                width: 330.0,
                height: 50.0,
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[3],
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  // borderSide: BorderSide(color: Colors.black38)),
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //*******UPLOAD IMAGE
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Text('File browse', style: kTextStyle),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Browse...',
                      style: TextStyle(
                        color: Color(0xFFFFA0A0A0),
                        fontFamily: 'Poppin',
                        fontSize: 15.0,
                      ),
                    ),
                    Icon(
                      Icons.file_upload,
                      color: Colors.grey,
                    ),
                  ],
                ),
                width: 330.0,
                height: 50.0,
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
              //** SAVE IMAGE BUTTON
              Button(
                onPress: () {},
                buttonTitle: 'Save',
                colour: Color(0xFFFF3D3A3A),
              )
            ],
          ),
        ),
      ),
    );
  }
}
