import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class About extends StatefulWidget{
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('About'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
            child: Container(
              child:
              new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/sitama.jpg'),
                  radius: 90.0,
                ),
              ),
              Divider(
                height: 100.0,
                color: Colors.white,
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Swostik Gautam',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 30),
              Text(
                'D.O.B',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1998-06-26',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Address',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagarjun-7,Kathhmandu',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Education',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Sirjana vidhya mandir School - SLC',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              Text(
                'First Division',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              Text(
                '2070 BS',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Kathmandu Bernhardt College- Plus Two',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              Text(
                'First Division in Science',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              Text(
                '2073 BS',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Kathmandu Bernhardt College- Bsc.Csit',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              Text(
                '2073 BS-Present',
                style: TextStyle(
                  fontSize: 17.0,
                  color:Colors.amber,
                  letterSpacing:2.0
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Microsoft Technology Associate',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Contact',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.red,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'swastikg11@gmail.com',
                      style:TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    MdiIcons.phone,
                    color: Colors.red,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '+9779841174765',
                      style:TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    MdiIcons.githubCircle,
                    color: Colors.red,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'https://github.com/swostikg11',
                      style:TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10.0),
            ],
          ),
            ),
        ),
    );
  }
}

