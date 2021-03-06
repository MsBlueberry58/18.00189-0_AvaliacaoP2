import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/telas/tela1.dart';
import 'package:flutter_p2/telas/tela3.dart';
import 'package:flutter_p2/telas/tela4.dart';
import 'package:flutter_p2/utilities/network_helper.dart';

class Tela2 extends StatefulWidget {
  // Variáveis da classe pokémon.dart que recebem os dados passados pela Tela1 (ao clicar no Start)
  final Pokemon_Obj poke;
  final Pokemon_Obj poke1;
  final Pokemon_Obj poke2;
  final Pokemon_Obj poke3;

  const Tela2({
    Key key,
    @required this.poke,
    @required this.poke1,
    @required this.poke2,
    @required this.poke3,
  }) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  // Variável que afirma se o botão está pressionado, usado na hora de mudar a cor do botão com o clique
  bool hasbeenPressed = false;

  // Widgets da tela 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false, // set it to false

        // App Bar
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
          child: Stack(
              children: [

                // Plano de fundo
            Image.network(
              "https://www.teahub.io/photos/full/68-682392_28-04-2018-pokemon-sun-and-moon-wallpaper.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),

            // Imagem "Quem é esse Pokémon?"
            Positioned(
              child: Image.network(
                "https://static.quizur.com/i/b/57c1c26fc0b812.5998420157c1c26fb156c9.51498011.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),

            // Sprite randômica do Pokémon, que fica na parte branca da imagem "Quem é esse Pokémon?"
            Positioned(
              left: 20.0,
              top: 110.0,
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

                // Mudança de cor de acordo com o estado do botão (apertado = verde, pois é a resposta certa)
                color: hasbeenPressed ? Colors.greenAccent : Colors.amberAccent,

                // Nome do Pokémon, que veio do randômico FetchPoke da Tela 1
                child: Text(
                  widget.poke.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,

                    // Ao ser apertado, vai para a tela de sucesso (Tela 3)
                    MaterialPageRoute(builder: (context) => Tela3()),
                  );
                  setState(() {
                    // Lógica do botão apertado ou não
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
              ),
            ),

            // SEGUNDO BOTAO - Mesma lógica dos terceiro e quarto botões, então considere os comentários os mesmos
            Positioned(
              left: 40.0,
              bottom: 230.0,
              height: 60,
              width: 330,

              child: RaisedButton(
                // Mudança de cor de acordo com o estado do botão (apertado = vermelho, pois é a resposta errada)
                color: hasbeenPressed ? Colors.redAccent : Colors.amberAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    // Ao ser apertado, vai para a tela de fracasso (Tela 4)
                    MaterialPageRoute(builder: (context) => Tela4()),
                  );
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },

                // Nome do Pokémon, que veio do randômico FetchPoke da Tela 1
                child: Text(
                  widget.poke1.name,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela4()),
                  );
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
                child: Text(
                  widget.poke2.name,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela4()),
                  );
                  setState(() {
                    hasbeenPressed = !hasbeenPressed;
                  });
                },
                child: Text(
                  widget.poke3.name,
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
