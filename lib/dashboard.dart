import 'package:flutter/material.dart';
import 'package:pi/cadastro.dart';
import 'package:pi/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IA Análise de Crédito'),
        shadowColor: const Color.fromARGB(255, 146, 230, 90),
        backgroundColor: const Color.fromARGB(255, 55, 23, 235),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Cliente'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListaContato()),
                );
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Adicione uma imagem de apresentação
          Expanded(
            child: Image.asset(
              'assets/images/analise-credito.png',
              fit: BoxFit.cover, // Ajuste da imagem
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 20), // Espaçamento entre a imagem e o texto
          // Adicione um texto de apresentação
          const Text(
            'Bem-vindo ao IA Análise de Crédito!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
