import 'package:flutter/material.dart';
import 'package:homestay_app/utils/add_image.dart';

import 'homepage.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Homestay",
      theme: ThemeData(
        fontFamily: 'Maiden',
      ),
      home: LoginWidget(),
    );
  }
}

class LoginWidget extends StatelessWidget {
  final _email = TextEditingController();
  final _passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login_background_image.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 150.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Homestay",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        maxLines: 1,
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                  color: Colors.deepPurple[200],
                                  blurRadius: 1.0,
                                  offset: Offset(2.0, -2.0))
                            ],
                            color: Colors.indigo[500],
                            fontSize: 46.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300
//                        fontFamily: 'Maiden'
                            ),
                      ),
                    ),
                    Text(
                      "your own homestay booking assistance",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.indigo[600],
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
//                        fontFamily: 'Maiden'
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 36.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style:
                          TextStyle(color: Colors.indigo[50], fontSize: 18.0),
                      maxLines: 1,
                      textDirection: TextDirection.ltr,
                      keyboardAppearance: Brightness.dark,
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white70),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                        hintMaxLines: 1,
                      ),
                    ),
                    TextFormField(
                      style:
                          TextStyle(color: Colors.indigo[50], fontSize: 18.0),
                      maxLines: 1,
                      textDirection: TextDirection.ltr,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      controller: _passWord,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white70,
                        )),
                        hintMaxLines: 1,
                        /*border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pink[200]
                          )
                        )*/
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.blue[600],
                          elevation: 5.0,
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            onLoginClicked(_email, _passWord, context);
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "No account?",
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: Colors.blue[500],
                                fontSize: 13.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                child: Text(
                                  "click here.",
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 13.0,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 18.0, left: 50.0, right: 50.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: imageButton('images/facebook_logo.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: imageButton('images/instagram_icon.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: imageButton('images/facebook_logo.png'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void onLoginClicked(TextEditingController email, TextEditingController passWord, BuildContext context) {
  if (email.text.isNotEmpty && passWord.text.isNotEmpty) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage())
    );
  }
}

/*Image imageButton(String assetName) {
  var imageAssets = AssetImage(assetName);
  var image = Image(
    image: imageAssets,
    width: 60.0,
    height: 60.0,
  );
  return image;
}*/
