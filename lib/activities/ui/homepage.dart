import 'package:flutter/material.dart';
import 'package:homestay_app/utils/add_image.dart';

import 'loop_view.dart';

void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          title: Text(
            "Homestay",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue[50],
              fontSize: 24.0,
            ),
          ),
          elevation: 6.0,
        ),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomepageBody(),
        ));
  }
}

class HomepageBody extends StatelessWidget {
  var item = List(5);

  @override
  Widget build(BuildContext context) {
    item[0] = 'images/instagram_icon.png';
    item[1] = 'images/facebook_logo.png';
    item[2] = 'images/instagram_icon.png';
    item[3] = 'images/facebook_logo.png';
    item[4] = 'images/instagram_icon.png';
    return Material(
      child: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: SizedBox(
                      width: double.infinity,
                      child: addView(item[0]),
                    ),
                  onTap: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoop()));
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[1]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[2]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[3]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[4]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[0]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[1]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[2]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[3]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[4]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[0]),
                ),
                SizedBox(
                  width: double.infinity,
                  child: addView(item[1]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*SizedBox addItem(List item) {
    for (var i = 0; i < 5; i++) {
      print("List Size ${i.toString()}");
      return SizedBox(
        width: double.infinity,
        child: addView(item[i]),
      );
    }
  }*/
}

Container addView(String imagePath) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.red[700], width: 2.0)),
        color: Colors.white30),
    margin: EdgeInsets.only(top: 1.0),
    child: Row(
      children: <Widget>[imageButton(imagePath)],
    ),
  );
}
