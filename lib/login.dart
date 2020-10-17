import 'package:finmanager/homewidget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String imageUrl;

Future<String> signInWithGoogle() async {
  await Firebase.initializeApp();

  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  if (user != null) {
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoURL != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoURL;

    final User currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);

    print('signInWithGoogle succeeded: $user');

    return '$user';
  }

  return null;
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            child: Image.asset("images/google.png"),
                          ),
                        ),
                        Text(
                          "Sign in with Google",
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
                    signInWithGoogle().then((result) {
                      if (result != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeWidget();
                            },
                          ),
                        );
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "By signing in with Google, you agree to accept Google's terms and conditions",
                  style: TextStyle(
                      color: Colors.white54,
                      fontFamily: "Metropolis",
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
