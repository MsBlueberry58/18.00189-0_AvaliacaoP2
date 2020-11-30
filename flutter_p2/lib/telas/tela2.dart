import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // set it to false
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
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Column(children: [
            Image.network(
              "https://static.quizur.com/i/b/57c1c26fc0b812.5998420157c1c26fb156c9.51498011.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),

            //PRIMEIRO BOTAO
            ElevatedButton(
              onPressed: null,
              child: Text(
                "Pokémon 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),

            // SEGUNDO BOTAO
            ElevatedButton(
              onPressed: null,
              child: Text(
                "Pokémon 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),

            // TERCEIRO BOTAO
            ElevatedButton(
              onPressed: null,
              child: Text(
                "Pokémon 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),

            // QUARTO BOTAO
            ElevatedButton(
              onPressed: null,
              child: Text(
                "Pokémon 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
          ]),
        ));
  }
}
