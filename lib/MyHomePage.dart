
import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoarding.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/bg.png')
            )
        ),
        child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/logo.png')
                  )
              ),
            )
        ),
      ),
    );
  }
  void openOnBoard()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()),);
  }

}
