import 'package:flutter/material.dart';
import 'package:pi/formulario.dart';

class CardFormulario extends StatelessWidget {
  const CardFormulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Navegar para a página de contatos quando o cartão for clicado
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Formulario()),
          );
        },
        child: const Card(
          elevation: 1,
          color: Colors.deepOrangeAccent,
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Análisar de Crédito',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
