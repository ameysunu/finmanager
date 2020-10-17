import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Welcome to",
                  style: TextStyle(
                      fontFamily: "Metropolis",
                      color: Colors.white54,
                      fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Text(
                    "Finance Manager",
                    style: TextStyle(
                        fontFamily: "Metropolis",
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("images/home.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30, 10, 10),
                child: RaisedButton(
                  color: HexColor('#9296F0'),
                  child: Container(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "Sup",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () => hello(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void hello() {
  print("Sup");
}
