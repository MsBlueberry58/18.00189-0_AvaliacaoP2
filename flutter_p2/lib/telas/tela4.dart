import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tela4 extends StatelessWidget {
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
                "https://wallpapercave.com/wp/wp2431828.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              Positioned(
                  top: 120,
                  left: 100,
                  child: Text('Tente',
                      style: TextStyle(
                        fontSize: 70.0,
                        fontFamily: "Pokemon",
                        color: Colors.black,
                      ))),
              Positioned(
                  bottom: 80,
                  left: 20,
                  child: Text('novamente',
                      style: TextStyle(
                        fontSize: 70.0,
                        fontFamily: "Pokemon",
                        color: Colors.black,
                      ))),
            ])));
  }
}
