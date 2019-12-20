import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Tag',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double varOpacity = 0.7;
  bool toggleVar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: GestureDetector(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/images/example.jpg'),
                ),
              ),
              Positioned(
                top: 398,
                left: 280,
                child: Opacity(
                  opacity: varOpacity,
                  child: IconButton(
                    iconSize: 10,
                    color: Colors.black,
                    icon: Icon(MdiIcons.triangle),
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                top: 420,
                left: 250,
                child: Opacity(
                  opacity: varOpacity,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.black,
                    child: Text(
                      'Better Jim',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                top: 358,
                left: 125,
                child: Opacity(
                  opacity: varOpacity,
                  child: IconButton(
                    iconSize: 10,
                    color: Colors.black,
                    icon: Icon(MdiIcons.triangle),
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                top: 380,
                left: 100,
                child: Opacity(
                  opacity: varOpacity,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.black,
                    child: Text(
                      'Best Jim',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Positioned(
                    top: 561,
                    left: 17,
                    child: Icon(
                      MdiIcons.circle,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 15,
                    child: Icon(
                      Icons.account_circle,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
          onTap: () {
            setState(() {
              if (!toggleVar) {
                varOpacity = 0;
                toggleVar = true;
              } else {
                varOpacity = 0.7;
                toggleVar = false;
              }
            });
          },
        ),
      ),
    );
  }
}
