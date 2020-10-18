import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final billController = TextEditingController();
final tipController = TextEditingController();

int calc = 0;
int counter = 0;
double gbp = 0;
double inr = 0;
double eur = 0;
double aed = 0;
double yen = 0;

class Split extends StatefulWidget {
  @override
  _SplitState createState() => _SplitState();
}

class _SplitState extends State<Split> {
  void billCalc() {
    setState(() => calc);
    var bill = double.parse(billController.text);
    calc = bill ~/ counter;
  }

  void currChange() {
    setState(() {
      gbp = calc * 0.77;
      inr = calc * 73.44;
      eur = calc * 0.85;
      aed = calc * 3.67;
      yen = calc * 105.39;
    });
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Bill Splitter",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Metropolis',
                        fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: HexColor('#2E2C2C'),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 10),
                          child: Text(
                            "Enter total bill",
                            style: TextStyle(
                                fontFamily: 'Metropolis', color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: billController,
                            decoration: new InputDecoration(
                                hintText: 'eg. 123.56',
                                hintStyle: TextStyle(
                                    fontFamily: 'Metropolis',
                                    color: Colors.white54,
                                    fontSize: 30)),
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Metropolis'),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Text(
                                "Choose Split",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  decrement();
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Text(
                                counter.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Metropolis',
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  increment();
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Text(
                                "Enter Tip",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Container(
                                width: 100,
                                height: 40,
                                child: TextField(
                                  decoration: new InputDecoration(
                                    enabledBorder: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white)),
                                  ),
                                  controller: tipController,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 50, 10, 10),
                          child: RaisedButton(
                            color: HexColor('#9296F0'),
                            child: Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Calculate",
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
                              billCalc();
                              currChange();
                              _popup(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Live Currency",
                    style: TextStyle(
                        color: HexColor('#ED5E93'),
                        fontFamily: 'Metropolis',
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "United States Dollars(USD)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        calc.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Great Britian Pounds(GBP)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        gbp.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Euros(EUR)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        eur.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "United Arab Emirates Dirhams(AED)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        aed.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Indian Rupees(INR)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        inr.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Japanese Yen(YEN)",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Metropolis'),
                      ),
                      Text(
                        gbp.toString(),
                        style: TextStyle(
                            color: HexColor('#00C9C8'),
                            fontFamily: 'Metropolis'),
                      )
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

void _popup(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Total Bill per person",
                    style: TextStyle(
                        fontFamily: 'Metropolis', color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      calc.toString(),
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
