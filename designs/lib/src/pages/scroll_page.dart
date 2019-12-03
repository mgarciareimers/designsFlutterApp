import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          this._createFirstPage(),
          this._createSecondPage(),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }

  // Method that creates the first page.
  Widget _createFirstPage() {
    return Stack(
      children: <Widget>[
        this._createBackground(double.infinity, double.infinity, Color.fromRGBO(107, 193, 216, 1)),
        this._createBackgroundImage(),
        this._createFirstPageFront(),
      ],
    );
  }

  // Method that creates the second page.
  Widget _createSecondPage() {
    return Stack(
      children: <Widget>[
        this._createBackground(double.infinity, double.infinity, Color.fromRGBO(107, 193, 216, 1)),
        this._createSecondPageFront(),
      ],
    );
  }

  // Method that creates the background.
  Widget _createBackground(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  // Method that creates the background image.
  Widget _createBackgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  // Method that create the first page front widget.
  Widget _createFirstPageFront() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text('11º', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }

  // Method that creates the second page front widget.
  Widget _createSecondPageFront() {

    return Center(
      child: RaisedButton(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text('Welcome', style: TextStyle(fontSize: 20))
        ),
        textColor: Colors.white,
        color: Colors.blue,
        shape: StadiumBorder(),
        onPressed: () {},
      ),
    );
  }
}
