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

  //int randomNumber = random.nextInt(100);

  Future FetchPoke()  async {
    var requisicao =
        NetworkHelper(url: "https://pokeapi.co/api/v2/pokemon-form/${random.nextInt(895)}");
     poke_t = Pokemon_Obj.fromJson(await requisicao.getData());

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
                      MaterialPageRoute(builder: (context) => Tela2(poke: poke_t)),
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
