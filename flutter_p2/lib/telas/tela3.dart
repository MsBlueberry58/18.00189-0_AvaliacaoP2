import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/telas/tela1.dart';

class Tela3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false, // set it to false
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Poke Guesser',
            style: TextStyle(
              fontFamily: "Pokemon",
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Image.network(
            "https://i.imgur.com/i6v5dEg.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 370,
              left: 45,
              child: Text('Parabéns!',
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: "Pokemon",
                    color: Colors.black,
                  ))),
              Positioned(
                bottom: 30,
                left: 30,
                child:RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Back to Title Screen",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tela1()),
                    );
                  },
                ),)
        ])));
  }
}
