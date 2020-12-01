import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/utilities/network_helper.dart';

class Tela2 extends StatelessWidget {

  final Pokemon_Obj poke ;

  const Tela2({Key key, @required this.poke}) : super(key: key);

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

            child:
            Text(
                "",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              _HasBeenPressed = true;
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
            color: Colors.amberAccent,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            onPressed: (){

            },
            child: Text(
              "Pokémon 2",
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
            color: Colors.amberAccent,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            onPressed: (){

            },
            child: Text(
              "Pokémon 3",
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
            color: Colors.amberAccent,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            onPressed: (){

            },
            child: Text(
              "Pokémon 4",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.black,
              ),
            ),

          ),
        ),
        ]),)
    );
  }
}
