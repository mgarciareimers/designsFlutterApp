import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            this._createMainImage(size.height * 0.4),
            SizedBox(height: 10),
            this._createFirstRow(),
            SizedBox(height: 30),
            this._createSecondRow(),
            SizedBox(height: 10),
            this._createTextRow('Taj Mahal is an ivory-white marble Islamic mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.'),
            SizedBox(height: 10),
            this._createTextRow('Construction of the mausoleum was essentially completed in 1643, but work continued on other phases of the project for another 10 years. The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees, which in 2015 would be approximately 52.8 billion rupees (U.S. \$827 million). The construction project employed some 20,000 artisans under the guidance of a board of architects led by the court architect to the emperor, Ustad Ahmad Lahauri.'),
            SizedBox(height: 10),
            this._createTextRow('The Taj Mahal was designated as a UNESCO World Heritage Site in 1983 for being "the jewel of Muslim art in India and one of the universally admired masterpieces of the world\'s heritage". It is regarded by many as the best example of Mughal architecture and a symbol of India\'s rich history. The Taj Mahal attracts 7–8 million visitors a year and in 2007, it was declared a winner of the New7Wonders of the World (2000–2007) initiative.'),
            SizedBox(height: 20),
          ],
        ),
      )
    );
  }

  // Method that creates the main image.
  Widget _createMainImage(double height) {
    return Container(
      width: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/no-image.png'),
        image: NetworkImage('http://img2.rtve.es/i/?w=1600&i=1526979432422.jpg'),
        fit: BoxFit.cover,
        height: height,
      ),
    );
  }

  // Method that creates the first row.
  Widget _createFirstRow() {
    final titleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final subTitleStyle = TextStyle(fontSize: 16, color: Colors.grey);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Taj Mahal', style: titleStyle),
                    SizedBox(height: 3),
                    Text('Agra, India', style: subTitleStyle,),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.red, size: 30),
              Text('41', style: TextStyle(fontSize: 20),)
            ],
        ),
      ),
    );
  }

  // Method that creates the second row.
  Widget _createSecondRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          this._createAction(Icons.phone, 'CALL', Colors.blue),
          this._createAction(Icons.near_me, 'ROUTE', Colors.blue),
          this._createAction(Icons.share, 'SHARE', Colors.blue),
        ],
      ),
    );
  }

  // Method that creates an action (for the second row).
  Widget _createAction(IconData icon, String action, Color color) {
    return Column(
      children: <Widget>[
        Icon(icon, color: color, size: 40),
        SizedBox(height: 5),
        Text(action, style: TextStyle(fontSize: 15, color: color)),
      ],
    );
  }

  // Method that creates the third row.
  Widget _createTextRow(String text) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
