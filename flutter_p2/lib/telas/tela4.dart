import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/telas/tela1.dart';
import 'package:flutter_p2/telas/tela2.dart';
import 'package:flutter_p2/telas/tela3.dart';
import 'package:flutter_p2/utilities/network_helper.dart';

class Tela4 extends StatelessWidget {
  Random random = new Random();
  Pokemon_Obj poke_t = new Pokemon_Obj();
  Pokemon_Obj poke_1 = new Pokemon_Obj();
  Pokemon_Obj poke_2 = new Pokemon_Obj();
  Pokemon_Obj poke_3 = new Pokemon_Obj();

// Mesma lógica da Tela 1, fazendo a conexão com a API e gerando quatro Pokémons aleatórios
  Future FetchPoke() async {
    var requisicao = NetworkHelper(
        url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_t = Pokemon_Obj.fromJson(await requisicao.getData());
    var requisicao2 = NetworkHelper(
        url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_1 = Pokemon_Obj.fromJson(await requisicao2.getData());
    var requisicao3 = NetworkHelper(
        url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_2 = Pokemon_Obj.fromJson(await requisicao3.getData());
    var requisicao4 = NetworkHelper(
        url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_3 = Pokemon_Obj.fromJson(await requisicao4.getData());
  }

// Widgets da Tela 4
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Evitando overflow de pixels
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
            child: Stack(children: [
          //Plano de fundo
          Image.network(
            "https://wallpapercave.com/wp/wp2431828.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),

          // Print mensagem de erro 1
          Positioned(
              top: 120,
              left: 100,
              child: Text('Tente',
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: "Pokemon",
                    color: Colors.black,
                  ))),

          // Print mensagem de erro 2
          Positioned(
              bottom: 80,
              left: 20,
              child: Text('novamente',
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: "Pokemon",
                    color: Colors.black,
                  ))),

          // Botão de tentar novamente, que tem a mesma lógica/funcionamento do botão START da Tela1
          Positioned(
            bottom: 35,
            left: 100,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Text(
                "TRY AGAIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                await FetchPoke();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Tela2(
                          poke: poke_t,
                          poke1: poke_1,
                          poke2: poke_2,
                          poke3: poke_3)),
                );
              },
            ),
          )
        ])));
  }
}
