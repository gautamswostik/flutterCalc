import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import "calc.dart";
import 'temp.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.grey[600],
      ),
      body: Center(
        child: new Container(
          color: Colors.grey[600],
          child:
          Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new GestureDetector(
                child:
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.fromLTRB(50, 50, 75, 260),
                    color: Colors.purple,
                    child: new Column(
                      children: <Widget>[
                        new CircleAvatar(
                          backgroundColor: Colors.blue,
                            child:
                                new Icon(MdiIcons.calculator,
                                  color: Colors.white,), 
                              ),
                        new Text('Calculator',
                        style: TextStyle(
                          color:Colors.white,
                        ),)
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Calculator()),);
                },
                ),
                GestureDetector(
                child:
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.fromLTRB(50, 50,35, 260),
                    color: Colors.red,
                    child: new Column(
                      children: <Widget>[
                        new CircleAvatar(
                          backgroundColor: Colors.blue,
                            child:
                                new Icon(MdiIcons.temperatureCelsius,
                                  color: Colors.white,), 
                              ),
                        new Text('Temp comverter',
                        style: TextStyle(
                          color:Colors.white,
                        ),)
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Temp()),);
                },
                ),
              ],
            ),
                new GestureDetector(
                  child:
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.symmetric(vertical:150,horizontal: 178),
                    color: Colors.yellowAccent,
                    child: new Column(
                      children: <Widget>[
                        new CircleAvatar(
                          backgroundColor: Colors.blue,
                            child:
                                new Icon(MdiIcons.exclamationThick,
                                  color: Colors.white,), 
                              ),
                        new Text('About',
                        style: TextStyle(
                          color:Colors.black,
                        ),)
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>About()),);
                },
                ),
              ],
            ),
        ),
        ),
    );
  }
}
// work on main is done for now....but learning is going on
