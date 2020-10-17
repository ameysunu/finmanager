import 'package:finmanager/login.dart';
import 'package:finmanager/pages/convert.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "18th October 2020",
                  style: TextStyle(
                      color: HexColor('#CBCCFF'), fontFamily: 'Metropolis'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Hello, $name",
                    style: TextStyle(
                        color: HexColor('#FFFFFF'),
                        fontFamily: 'Metropolis',
                        fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10.0, bottom: 20),
                            child: Container(
                              height: 250,
                              width: 175,
                              child: Card(
                                color: HexColor('#2E2C2C'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Container(
                                            child: Icon(
                                      Icons.compare_arrows_rounded,
                                      color: HexColor('#ED5E93'),
                                      size: 40,
                                    ))),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Split\nChecker",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Split with friends easily.",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white54,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 20),
                            child: Container(
                              height: 250,
                              width: 175,
                              child: Card(
                                elevation: 5,
                                color: HexColor('#2E2C2C'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Container(
                                            child: Icon(
                                      Icons.attach_money,
                                      color: HexColor('#00E6E4'),
                                      size: 40,
                                    ))),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Your\nCards",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Monitor your card usage.",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white54,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // decoration: new BoxDecoration(
                              //   boxShadow: [
                              //     new BoxShadow(
                              //       color: Colors.white38,
                              //       blurRadius: 20.0,
                              //     ),
                              //   ],
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10.0, bottom: 20),
                            child: Container(
                              height: 250,
                              width: 175,
                              child: InkWell(
                                child: Card(
                                  color: HexColor('#2E2C2C'),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                          child: Container(
                                              child: Icon(
                                        Icons.comment_bank,
                                        color: HexColor('#FF683E'),
                                        size: 40,
                                      ))),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Currency\nConverter",
                                          style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Get live currency rates.",
                                          style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              color: Colors.white54,
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Converter()),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 20),
                            child: Container(
                              height: 250,
                              width: 175,
                              child: Card(
                                elevation: 5,
                                color: HexColor('#2E2C2C'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Container(
                                            child: Icon(
                                      Icons.info_outline_rounded,
                                      color: HexColor('#B779FF'),
                                      size: 40,
                                    ))),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "User\nDetails",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "All about you.",
                                        style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            color: Colors.white54,
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // decoration: new BoxDecoration(
                              //   boxShadow: [
                              //     new BoxShadow(
                              //       color: Colors.white38,
                              //       blurRadius: 20.0,
                              //     ),
                              //   ],
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
