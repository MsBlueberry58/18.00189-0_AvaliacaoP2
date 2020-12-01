import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/telas/tela1.dart';
import 'package:flutter_p2/telas/tela3.dart';
import 'package:flutter_p2/telas/tela4.dart';
import 'package:flutter_p2/utilities/network_helper.dart';

class Tela2 extends StatefulWidget {
  final Pokemon_Obj poke;

  const Tela2({Key key, @required this.poke}) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();


}

/*PokeLista() async{

  List<Pokemon_Obj> lista = new List<Pokemon_Obj>();
  Random random = new Random();

  var requisicao = NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
  var poke1 = Pokemon_Obj.fromJson(await requisicao.getData());
  var requisicao2 = NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
  var poke2 = Pokemon_Obj.fromJson(await requisicao2.getData());
  var requisicao3 = NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
  var poke3 = Pokemon_Obj.fromJson(await requisicao3.getData());

  lista.add(poke1);
  lista.add(poke2);
  lista.add(poke3);

  return lista;
}
*/


class _Tela2State extends State<Tela2> {

  bool hasbeenPressed = false;
  //List lista_rand = PokeLista();

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela3()),
                  );
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
              child:
              RaisedButton(


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
                  "lista_rand[0].name",
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
                  "lista_rand[1].name",
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
                  "lista_rand[2].name",
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
