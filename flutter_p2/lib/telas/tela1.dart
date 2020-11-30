import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // set it to false
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Poke Guesser'),
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
                child: ElevatedButton(onPressed: null, child:
                Text('START',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,

                    )
                ),
                )
            ),

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
