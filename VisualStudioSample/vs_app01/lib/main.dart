import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vs_app01/loginclass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _userName = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page', 
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Icon(Icons.polymer),
            Container(
              child: Text('LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
              ), 
            ),
            
            
            SizedBox(height: 70.0,),
            Container(
              child :TextField(
                decoration: InputDecoration(
                  hintText: 'UserName',
                  icon: Icon(Icons.perm_identity)
                ),
                controller : _userName,
              ),
            ),
            SizedBox(height: 10.0,),
            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'PassWord',
                  icon : Icon(Icons.security),
                  ),
                controller: _password,
              ),
            ),

            SizedBox(height: 20.0,),

            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.circular(30.0),
              ),
              child: Text('Next',
              style: TextStyle(decorationThickness: 50.0,), 
              ),
              onPressed: () {                  
                },)
          ],
        ),
      ),
    );
  }
}