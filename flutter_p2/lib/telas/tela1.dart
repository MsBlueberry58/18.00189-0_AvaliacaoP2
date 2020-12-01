import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_p2/models/pokemon.dart';
import 'package:flutter_p2/telas/tela2.dart';
import 'package:flutter_p2/utilities/network_helper.dart';
import 'dart:math';

class Tela1 extends StatelessWidget {

  Random random = new Random();
  Pokemon_Obj poke_t = new Pokemon_Obj();
  Pokemon_Obj poke_1 = new Pokemon_Obj();
  Pokemon_Obj poke_2 = new Pokemon_Obj();
  Pokemon_Obj poke_3 = new Pokemon_Obj();


  Future FetchPoke()  async {
    var requisicao =
        NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
     poke_t = Pokemon_Obj.fromJson(await requisicao.getData());
    var requisicao2 =
    NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_1 = Pokemon_Obj.fromJson(await requisicao2.getData());
    var requisicao3 =
    NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_2 = Pokemon_Obj.fromJson(await requisicao3.getData());
    var requisicao4 =
    NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
    poke_3 = Pokemon_Obj.fromJson(await requisicao4.getData());

  }

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
            child: Stack(
          children: [
            Image.network(
              "https://wallpapercave.com/wp/wp2609505.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            new Positioned(
                left: 60.0,
                bottom: 180.0,
                height: 80,
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    await FetchPoke();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tela2(poke: poke_t, poke1: poke_1, poke2: poke_2, poke3: poke_3)),
                    );
                  },
                  child: Text('START',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        fontFamily: "Pokemon",
                        color: Colors.black,
                      )),
                )),
            new Positioned(
                left: 60.0,
                bottom: 70.0,
                height: 80,
                width: 300,
                child: new ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: Text('EXIT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          fontFamily: "Pokemon",
                          color: Colors.black,
                        ))))
          ],
        )));
  }
}
