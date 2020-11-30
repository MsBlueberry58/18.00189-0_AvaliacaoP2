import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p2/telas/tela2.dart';

class Tela1 extends StatelessWidget {
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela2()),
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
          child: new ElevatedButton(onPressed: null, child: null))
      ],
    )));
  }
}
