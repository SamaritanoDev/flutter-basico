import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
            placeholder: AssetImage('assets/gifs/load.gif'),
            image: NetworkImage('https://ciberninjas.com/wp-content/uploads/2020/10/android-preguntas-frecuentes.webp'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          )   
        ],
      ),
    );
  }
}