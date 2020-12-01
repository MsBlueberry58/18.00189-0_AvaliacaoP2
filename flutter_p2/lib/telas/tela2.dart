import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/utilities/network_helper.dart';

class Tela2 extends StatefulWidget {

  final Pokemon_Obj poke;

  const Tela2({Key key, @required this.poke}) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();
}


class _Tela2State extends State<Tela2> {

  Random random = new Random();

  //ListaPoke(){
    //var Pokemon_Obj poke_rand;

    //int id_random =

    //return id_random;
  //}

  bool hasbeenPressed = false;

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
              "https://www.teahub.io/photos/full/68-682392_28-04-2018-pokemon-sun-and-moon-wallpaper.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),

            Positioned(
              child: Image.network(
                "https://static.quizur.com/i/b/57c1c26fc0b812.5998420157c1c26fb156c9.51498011.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),

            Positioned(
              left: 20.0,
              top: 120.0,
              child: Image.network(
                widget.poke.sprites.frontDefault,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),

            //PRIMEIRO BOTAO
            Positioned(
              left: 40.0,
              bottom: 330.0,
              height: 60,
              width: 330,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                color: hasbeenPressed ? Colors.greenAccent : Colors.amberAccent,
                child: Text(
                  widget.poke.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
              ),
            ),

            // SEGUNDO BOTAO
            Positioned(
              left: 40.0,
              bottom: 230.0,
              height: 60,
              width: 330,
              child: RaisedButton(
                color: hasbeenPressed ? Colors.redAccent : Colors.amberAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
                child: Text(
                  "poke_erro",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // TERCEIRO BOTAO
            Positioned(
              left: 40.0,
              bottom: 130.0,
              height: 60,
              width: 330,
              child: RaisedButton(
                color: hasbeenPressed ? Colors.redAccent : Colors.amberAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
                child: Text(
                  "poke_erro.name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // QUARTO BOTAO
            Positioned(
              left: 40.0,
              bottom: 30.0,
              height: 60,
              width: 330,
              child: RaisedButton(
                color: hasbeenPressed ? Colors.redAccent : Colors.amberAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
                child: Text(
                  "poke_erro.name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
