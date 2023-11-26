import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:pi/analise2.dart';
import 'package:pi/style.dart';

class FormularioModel extends StatefulWidget {
  const FormularioModel({super.key});

  // ignore: library_private_types_in_public_api
  @override
  // ignore: library_private_types_in_public_api
  _FormularioState createState() => _FormularioState();

  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class _FormularioState extends State<FormularioModel> {
  String dropdownValue1 = 'Sem saldo ou debito';
  String dropdownValue2 = '6';
  String dropdownValue3 = 'Sem créditos anteriores ou todos pagos';
  String dropdownValue4 = 'Carro novo';
  String dropdownValue5 = '500';
  String dropdownValue6 = '100';
  String dropdownValue7 = 'Desenpregado';
  String dropdownValue8 = 'Acima de 35';
  String dropdownValue9 = 'Homem divorciado/vivendo separado';
  String dropdownValue10 = 'Nenhum';
  String dropdownValue11 = '1 ano';
  String dropdownValue12 = 'Propiedades imobiliárias/terras';
  String dropdownValue13 = '0 a 25 anos';
  String dropdownValue14 = 'Em outros bancos';
  String dropdownValue15 = 'apartamento alugado';
  String dropdownValue16 = 'Um só';
  String dropdownValue17 =
      'Desempregado/não qualificado sem residência permanente';
  String dropdownValue18 = '0 a 2 anos';
  String dropdownValue19 = 'Não';
  String dropdownValue20 = 'Não';

  final Map<String, dynamic> dropdownValuesMap1 = {
    'Sem saldo ou debito': 2,
    '0 a 200 Reais': 3,
    '200 Reais ou conta corrente por pelo menos 1 ano': 4,
    'Sem conta de execução': 1,
  };

  final Map<String, dynamic> dropdownValuesMap2 = {
    '6': 10,
    '6 a 12': 9,
    '12 18': 8,
    '18 a 24': 7,
    '24 a 30': 6,
    '30 a 36': 5,
    '36 a 42': 4,
    '42 a 48': 3,
    '48 a 54': 2,
    '54': 1,
  };

  final Map<String, dynamic> dropdownValuesMap3 = {
    'Sem créditos anteriores ou todos pagos': 2,
    'Pagos os créditos anteriores neste banco': 4,
    'Sem problemas com créditos neste banco': 3,
    'Pagamento hesitante de créditos anteriores': 0,
    'Conta problemática ou há outros créditos em outros bancos': 1,
  };

  final Map<String, dynamic> dropdownValuesMap4 = {
    'Carro novo': 1,
    'Carro usado': 2,
    'Itens de mobiliário': 3,
    'Rádio / televisão': 4,
    'Eletrodomésticos': 5,
    'Reparação': 6,
    'Educação': 7,
    'Férias': 8,
    'Reciclagem': 9,
    'Negócios': 10,
    'Outros': 0,
  };

  final Map<String, dynamic> dropdownValuesMap5 = {
    '500': 10,
    '500 a 1000': 9,
    '1000 a 1500': 8,
    '1500 a 2500': 7,
    '2500 a 5000': 6,
    '5000 a 7500': 5,
    '7500 a 10000': 4,
    '10000 a 15000': 3,
    '15000 a 20000': 2,
    '20000': 1,
  };

  final Map<String, dynamic> dropdownValuesMap6 = {
    '100': 2,
    '100 a 500': 3,
    '500 a 1000': 4,
    '1000': 5,
    'Não disponível / sem economias': 1,
  };

  final Map<String, dynamic> dropdownValuesMap7 = {
    'Desenpregado': 1,
    'Menos de 1 ano': 2,
    '1 a 4 anos': 3,
    '4 a 7 anos': 4,
    'Mais de 7 anos': 5,
  };

  final Map<String, dynamic> dropdownValuesMap8 = {
    'Acima de 35': 1,
    '25 a 35': 2,
    '20 a 25': 3,
    'menos de 20': 4,
  };

  final Map<String, dynamic> dropdownValuesMap9 = {
    'Homem divorciado/vivendo separado': 1,
    'Masculino solteiro': 2,
    'Homem casado/viúvo': 3,
    'Mulher': 4,
  };

  final Map<String, dynamic> dropdownValuesMap10 = {
    'Nenhum': 1,
    'Co-aplicante': 2,
    'Garantidor': 3,
  };

  final Map<String, dynamic> dropdownValuesMap11 = {
    '1 ano': 1,
    '1 a 4 anos': 2,
    '4 a 7 anos': 3,
    'Mais de 7 anos': 4,
  };

  final Map<String, dynamic> dropdownValuesMap12 = {
    'Propiedades imobiliárias/terras': 4,
    'Contrato com sociadade de construção e poupança/seguro de vida': 3,
    'Carro ou outros': 2,
    'Não disponível/sem ativos': 1,
  };

  final Map<String, dynamic> dropdownValuesMap13 = {
    '0 a 25 anos': 1,
    '26 a 39 anos': 2,
    '40 a 59 anos': 3,
    '60 a 64 anos': 5,
    'acima de 65 anos': 4,
  };

  final Map<String, dynamic> dropdownValuesMap14 = {
    'Em outros bancos': 1,
    'Em loja de departamento ou casa de ordem de correio': 2,
    'sem mais créditos de execução': 3,
  };

  final Map<String, dynamic> dropdownValuesMap15 = {
    'apartamento alugado': 2,
    'apartamento próprio': 3,
    'apartamento gratuito': 1,
  };

  final Map<String, dynamic> dropdownValuesMap16 = {
    'Um só': 1,
    'Dois ou três': 2,
    'Quatro ou cinco': 3,
    'seis ou mais': 4,
  };

  final Map<String, dynamic> dropdownValuesMap17 = {
    'Desempregado/não qualificado sem residência permanente': 1,
    'Não qualificados com residência permanente': 2,
    'Trabalhador qualificado/empregado qualificado/funcionário público': 3,
    'Executivo/autônomo/maior funcionário público': 4,
  };

  final Map<String, dynamic> dropdownValuesMap18 = {
    '0 a 2 anos': 2,
    '3 ou mais anos': 1,
  };

  final Map<String, dynamic> dropdownValuesMap19 = {
    'Não': 1,
    'Sim': 2,
  };

  final Map<String, dynamic> dropdownValuesMap20 = {
    'Não': 1,
    'Sim': 2,
  };

  Map<String, dynamic> createJsonBody() {
    return {
      'dropdownValue1': dropdownValue1,
      'selectedValue1': dropdownValuesMap1[dropdownValue1],
      '\ndropdownValue2': dropdownValue2,
      'selectedValue2': dropdownValuesMap2[dropdownValue2],
      '\ndropdownValue3': dropdownValue3,
      'selectedValue3': dropdownValuesMap3[dropdownValue3],
      '\ndropdownValue4': dropdownValue4,
      'selectedValue4': dropdownValuesMap4[dropdownValue4],
      '\ndropdownValue5': dropdownValue5,
      'selectedValue5': dropdownValuesMap5[dropdownValue5],
      '\ndropdownValue6': dropdownValue6,
      'selectedValue6': dropdownValuesMap6[dropdownValue6],
      '\ndropdownValue7': dropdownValue7,
      'selectedValue7': dropdownValuesMap7[dropdownValue7],
      '\ndropdownValue8': dropdownValue8,
      'selectedValue8': dropdownValuesMap8[dropdownValue8],
      '\ndropdownValue9': dropdownValue9,
      'nselectedValue9': dropdownValuesMap9[dropdownValue9],
      '\ndropdownValue10': dropdownValue10,
      'selectedValue10': dropdownValuesMap10[dropdownValue10],
      '\ndropdownValue11': dropdownValue11,
      'selectedValue11': dropdownValuesMap11[dropdownValue11],
      '\ndropdownValue12': dropdownValue12,
      'selectedValue12': dropdownValuesMap12[dropdownValue12],
      '\ndropdownValue13': dropdownValue13,
      'selectedValue13': dropdownValuesMap13[dropdownValue13],
      '\ndropdownValue14': dropdownValue14,
      'selectedValue14': dropdownValuesMap14[dropdownValue14],
      '\ndropdownValue15': dropdownValue15,
      'selectedValue15': dropdownValuesMap15[dropdownValue15],
      '\ndropdownValue16': dropdownValue16,
      'selectedValue16': dropdownValuesMap16[dropdownValue16],
      '\ndropdownValue17': dropdownValue17,
      'selectedValue17': dropdownValuesMap17[dropdownValue17],
      '\ndropdownValue18': dropdownValue18,
      'selectedValue18': dropdownValuesMap18[dropdownValue18],
      '\ndropdownValue19': dropdownValue19,
      'selectedValue19': dropdownValuesMap19[dropdownValue19],
      'dropdownValue20': dropdownValue20,
      'selectedValue20': dropdownValuesMap20[dropdownValue20],
    };
  }

// Função para enviar o corpo JSON para o servidor
  Future<void> sendJsonBody() async {
    final url = Uri.parse('http://jsonplaceholder.typicode.com/post');
    final headers = {'Content-Type': 'application/json'};
    final Map<String, dynamic> jsonBody = createJsonBody();
    final String body = json.encode(jsonBody);

    // Imprime o JSON formatado
    if (kDebugMode) {
      print('JSON enviado:');
      print(jsonBody);
    }

    final response = await post(url, headers: headers, body: body);

    // Analise a resposta aqui para determinar se foi bem-sucedida ou não.
    if (kDebugMode) {
      print('Resposta do servidor:');
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analisar Crédito'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // primeiro dropdown
              const Text("Saldo em conta corrente"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue1,
                        items: dropdownValuesMap1.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // segundo dropdown
              const Text("Duração do crédito em meses"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue2,
                        items: dropdownValuesMap2.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue2 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // terceiro dropdown
              const Text("Histórico de crédito"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue3,
                        items: dropdownValuesMap3.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue3 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // quarto dropdown
              const Text("Propósito do crédito"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue4,
                        items: dropdownValuesMap4.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue4 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // quinto dropdown
              const Text("Valor do crédito"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue5,
                        items: dropdownValuesMap5.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue5 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // sexto dropdown
              const Text("Savings account/bonds"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue6,
                        items: dropdownValuesMap6.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue6 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // sétimo dropdown
              const Text("Tempo de emprego atual"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue7,
                        items: dropdownValuesMap7.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue7 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // oitavo dropdown
              const Text("Idade"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue8,
                        items: dropdownValuesMap8.entries
                            .map((MapEntry<String, dynamic> entry) {
                          return entry.key;
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue8 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // nono dropdown
              const Text("Estado civil e sexo"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue9,
                      items: dropdownValuesMap9.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue9 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo dropdown
              const Text("Número de dependentes"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue10,
                      items: dropdownValuesMap10.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue10 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo primeiro dropdown
              const Text("Duração do emprego atual"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue11,
                      items: dropdownValuesMap11.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue11 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo segundo dropdown
              const Text("Tipo de propriedade"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue12,
                      items: dropdownValuesMap12.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue12 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo terceiro dropdown
              const Text("Idade (anos)"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue13,
                      items: dropdownValuesMap13.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue13 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo quarto dropdown
              const Text("Outros créditos pendentes"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue14,
                      items: dropdownValuesMap14.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue14 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo quinto dropdown
              const Text("Tipo de moradia"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue15,
                      items: dropdownValuesMap15.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue15 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo sexto dropdown
              const Text("Número de créditos existentes neste banco"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue16,
                      items: dropdownValuesMap16.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(entry.key),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue16 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo sétimo dropdown
              const Text("Tipo de emprego e nível de qualificação"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue17,
                      items: dropdownValuesMap17.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(
                            entry.key,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue17 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo oitavo dropdown
              const Text("Número de créditos existentes neste banco"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue18,
                      items: dropdownValuesMap18.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(
                            entry.key,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue18 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // décimo nono dropdown
              const Text("Possui garantia de terceiros?"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue19,
                      items: dropdownValuesMap19.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(
                            entry.key,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue19 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // vigésimo dropdown
              const Text("Possui garantia de terceiros?"),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 20.0,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: CustomDropdownStyle.dropdownDecoration(),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue20,
                      items: dropdownValuesMap20.entries
                          .map((MapEntry<String, dynamic> entry) {
                        return DropdownMenuItem<String>(
                          value: entry.key,
                          child: Text(
                            entry.key,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue20 = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const Analise2()),
                  );
                },
                child: const Text('Enviar Dados'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
