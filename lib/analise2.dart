import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Analise2 extends StatefulWidget {
  const Analise2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Analise2State createState() => _Analise2State();
}

class _Analise2State extends State<Analise2> {
  final Map<String, dynamic> jsonData = {
    "AccountBalance": 2,
    "DurationofCredit": 10,
    "PaymentStatusofPreviousCredit": 1,
    "Purpose": 1,
    "CreditAmount": 1,
    "ValueSavings": 1,
    "Lengthofcurrentemployment": 1,
    "Instalmentpercent": 4,
    "Sex&MaritalStatus": 2,
    "Guarantors": 1,
    "DurationinCurrentaddress": 4,
    "Mostvaluableavailableasset": 2,
    "Age": 1,
    "ConcurrentCredits": 3,
    "Typeofapartment": 1,
    "NoofCreditsatthisBank": 1,
    "Occupation": 3,
    "Noofdependents": 1,
    "Telephone": 1,
    "ForeignWorker": 1
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analisar Crédito'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Resposta"),
            const SizedBox(height: 20),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  postJsonData(jsonData);
                },
                child: const Text('Enviar'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  getJsonData();
                },
                child: const Text('Receber'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> postJsonData(Map<String, dynamic> jsonData) async {
  final response = await http.post(
    Uri.parse('https://credit-ml.eastus.cloudapp.azure.com:5000/predict'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(jsonData),
  );

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print('POST Request enviado com sucesso');
    }
  } else {
    if (kDebugMode) {
      print(
          'Falha ao enviar POST Request. Código de status: ${response.statusCode}');
    }
  }
}

Future<void> getJsonData() async {
  final response = await http
      .get('https://credit-ml.eastus.cloudapp.azure.com:5000/predict' as Uri);

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print('GET Request bem-sucedido. Resposta: ${response.body}');
    }
  } else {
    if (kDebugMode) {
      print(
          'Falha ao enviar GET Request. Código de status: ${response.statusCode}');
    }
  }
}
  



/*class _Analise2State extends State<Analise2> {
  List<String> respostas = [
    'Credito Aprovado',
    'Credito Negado',
  ];

  String respostaAleatoria = 'Resposta';

  void gerarRespostaAleatoria() {
    setState(() {
      final random = Random();
      respostaAleatoria = respostas[random.nextInt(respostas.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analisar Crédito'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              respostaAleatoria,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: gerarRespostaAleatoria,
              child: const Text('Enviar Dados'),
            ),
          ],
        ),
      ),
    );
  }
}
*/