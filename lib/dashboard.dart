import 'package:flutter/material.dart';
import 'package:pi/cardlogin.dart';
import 'cardformulario.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IA Análise de Credito'),
        shadowColor: const Color.fromARGB(255, 146, 230, 90),
        backgroundColor: const Color.fromARGB(255, 55, 23, 235),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            CardFormulario(),
            CardLogin(),
          ],
        ),
      ),
    );
  }
}


