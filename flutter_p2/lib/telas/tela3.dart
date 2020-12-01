import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/telas/tela1.dart';

class Tela3 extends StatelessWidget {
  // WIdgets da Tela 3
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Evitando overflow de pixels
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
          // Plano de fundo
          Image.network(
            "https://i.imgur.com/i6v5dEg.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),

          // Mensagem de acerto
          Positioned(
              bottom: 370,
              left: 45,
              child: Text('Parabéns!',
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: "Pokemon",
                    color: Colors.black,
                  ))),

          // Botão que retorna para a tela inicial (Tela 1)
          Positioned(
            bottom: 30,
            left: 30,
            child: RaisedButton(
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
            ),
          )
        ])));
  }
}
