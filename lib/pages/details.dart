import 'package:finmanager/pages/cards.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Add a card",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                "Your information",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: HexColor('#CBCCFF'),
                    fontSize: 25),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 10, right: 10, bottom: 20),
              child: Center(
                  child: Text(
                "Add your details such as legal name, date of birth and card details. We'll find out your card type automatically.",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.white,
                    fontSize: 15),
              )),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Name on card",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 20,
                        color: HexColor('#CBCCFF'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Metropolis'),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white54,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: TextStyle(
                            fontFamily: 'Metropolis', color: Colors.white),
                        hintText: 'Jeremy, Mathew, Enrique etc.',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 20,
                        color: HexColor('#CBCCFF'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Metropolis'),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white54,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: TextStyle(
                            fontFamily: 'Metropolis', color: Colors.white),
                        hintText: '13/08/1999',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 25, 10, 10),
                    child: Text(
                      "Card Number",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 20,
                        color: HexColor('#CBCCFF'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Metropolis'),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white54,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: TextStyle(
                            fontFamily: 'Metropolis', color: Colors.white),
                        hintText: '1234-5678-9102',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 25, 10, 10),
                    child: Text(
                      "CVV and Expiry",
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 20,
                        color: HexColor('#CBCCFF'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Metropolis'),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white54,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: TextStyle(
                            fontFamily: 'Metropolis', color: Colors.white),
                        hintText: '123 04/2022',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 10),
              child: RaisedButton(
                color: HexColor('#F5916A'),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Done",
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
                    MaterialPageRoute(builder: (context) => Cards()),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
