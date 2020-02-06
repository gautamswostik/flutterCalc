import 'package:flutter/material.dart';
class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  List<Widget> containers =[
      Container(
        color: Colors.grey[600],
        child:
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('This is Celcius Section',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Celcius to Fahrenheit',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(°F) = T(°C) × 9/5 + 32',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Celcius to Kelvin',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(K) = T(°C) + 273.15',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),),
              ],
            ),
      ),
      Container(
        color: Colors.grey[600],
        child:
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('This is Fahrenheit Section',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Fahrenheit to Celcius',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(°C) = (T(°F) - 32) × 5/9',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Fahrenheit to Kelvin',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(K) = (T(°F) + 459.67) × 5/9',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),),
              ],
            ),
      ),
      Container(
        color: Colors.grey[600],
        child:
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('This is Kelvin Section',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Kelvin to Celcius',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(°C) = T(K) - 273.15',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20),
                new Text('Kelvin to Fahrenheit',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    )
                    ),
                SizedBox(height: 20),
                new Text('T(°F) = T(K) × 9/5 - 459.67',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),),
              ],
            ),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
          child: Scaffold(
        appBar: AppBar(
          title: Text("Temp Calculator"),
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs:<Widget>[
              Tab(
                text: 'Celcius',
              ),
              Tab(
                text: 'Ferinhight',
              ),
              Tab(
                text: 'kelvin',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}