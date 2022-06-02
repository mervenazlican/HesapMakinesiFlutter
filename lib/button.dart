import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String buttonIcerik;
  final double buttonYukseklik;
  final int buttonRenk;
  final int yaziRenk;
  final Function tiklama;

  const Button({ required this.buttonIcerik, required this.buttonYukseklik, required this.buttonRenk, required this.yaziRenk, required this.tiklama});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          color: Color(buttonRenk),
          textColor: Color(yaziRenk),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(4.0),
          onPressed: () => tiklama(buttonIcerik),
          child: Text(
            buttonIcerik,
            style: TextStyle(fontSize: buttonYukseklik,fontWeight: FontWeight.bold),
          ),
        ),

      ),
    );
  }
}

