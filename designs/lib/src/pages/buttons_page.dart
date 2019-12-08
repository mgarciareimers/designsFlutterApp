import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          this._createBackground(),
          this._createContent(),
        ],
      ),
      bottomNavigationBar: this._createBottomNavigationBar(context),
    );
  }

  // Method that creates the background of the page.
  Widget _createBackground() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ],
          begin: FractionalOffset(0, 0.6),
          end: FractionalOffset(0, 1),
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(255, 170, 172, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -150,
          child: pinkBox,
        ),
      ],
    );
  }

  // Method that creates the content of the page.
  Widget _createContent() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          this._createTitles(),
          this._createRoundedButtonsList(),
        ],
      ),
    );
  }

  // Method that creates the titles.
  Widget _createTitles() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }

  // Method that creates the rounded buttons list.
  Widget _createRoundedButtonsList() {
    return Table(
      children: [
        TableRow(
          children: [
            this._createRoundedButton(Colors.blue, Icons.border_all, 'General'),
            this._createRoundedButton(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
            children: [
              this._createRoundedButton(Colors.pinkAccent, Icons.shop, 'Buy'),
              this._createRoundedButton(Colors.orange, Icons.insert_drive_file, 'File'),
            ]
        ),
        TableRow(
            children: [
              this._createRoundedButton(Colors.blueAccent, Icons.movie_filter, 'Entertainment'),
              this._createRoundedButton(Colors.green, Icons.cloud, 'Groceries'),
            ]
        ),
        TableRow(
            children: [
              this._createRoundedButton(Colors.red, Icons.collections, 'Pictures'),
              this._createRoundedButton(Colors.teal, Icons.help_outline, 'Help'),
            ]
        ),
      ],
    );
  }

  // Method that creates a rounded button.
  Widget _createRoundedButton(Color color, IconData iconData, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35,
                child: Icon(iconData, color: Colors.white, size: 30,),
              ),
              Text(text, style: TextStyle(color: color),),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }

  // Method that creates the bottom navigation bar.
  Widget _createBottomNavigationBar(BuildContext context) {
    return new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1))
          )
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined),
              title: Container(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: Container(),
            ),
          ],
        ),
    );
  }
}
