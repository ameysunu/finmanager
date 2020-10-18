import 'package:finmanager/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Cards and Wallet",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Metropolis',
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Source Account",
                  style: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'Metropolis',
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/card.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: HexColor('#2E2C2C'),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Transactions",
                            style: TextStyle(
                                fontFamily: 'Metropolis',
                                color: Colors.white,
                                fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "12th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "CHIPOTLE, TEXAS",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- \u0024 75",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "12th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "ACC:XXX456 METRO",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "+ \u0024 5.76",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "11th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "APPLE STORE, DALLAS",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- \u0024 450",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "11th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "UBER INC.",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- \u0024 3.10",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "9th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "ACC:XXX8933 RENT",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- \u0024 1000",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "9th October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "ACC:XXX4544 ELECTRICITY AND WATER",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- \u0024 98.65",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1st October 2020",
                                      style: TextStyle(
                                          color: HexColor('#CBCCFF'),
                                          fontFamily: 'Metropolis'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        "MICROSOFT INC.",
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontFamily: 'Metropolis'),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "+ \u0024 9500",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontFamily: 'Metropolis'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 10),
                child: RaisedButton(
                  color: HexColor('#ED5E93'),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+ Add a card",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Metropolis",
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddCard()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
