import 'package:flutter/material.dart';
import 'package:pi/style.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
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

  var items1 = [
    'Sem saldo ou debito',
    '0 a 200 Reais',
    '200 Reais ou conta corrente por pelo menos 1 ano',
    'Sem conta de execução',
  ];
  var items2 = [
    '6',
    '6 a 12',
    '12 18',
    '18 a 24',
    '24 a 30',
    '30 a 36',
    '36 a 42',
    '42 a 48',
    '48 a 54',
    '54',
  ];
  var items3 = [
    'Sem créditos anteriores ou todos pagos',
    'Pagos os créditos anteriores neste banco',
    'Sem problemas com créditos neste banco',
    'Pagamento hesitante de créditos anteriores',
    'Conta problemática ou há outros créditos em outros bancos',
  ];
  var items4 = [
    'Carro novo',
    'Carro usado',
    'Itens de mobiliário',
    'Rádio / televisão',
    'Eletrodomésticos',
    'Reparação',
    'Educação',
    'Férias',
    'Reciclagem',
    'Negócios',
    'Outros'
  ];

  var items5 = [
    '500',
    '500 a 1000',
    '1000 a 1500',
    '1500 a 2000',
    '2000 a 2500',
    '2500 a 5000',
    '5000 a 75000',
    '7500 a 10000',
    '10000 a 15000',
    '15000 a 20000',
    '20000',
  ];

  var items6 = [
    '100',
    '100 a 500',
    '500 a 1000',
    '1000',
    'Não disponível / sem economias',
  ];

  var items7 = [
    'Desenpregado',
    'Menos de 1 ano',
    '1 a 4 anos',
    '4 a 7 anos',
    'Mais de 7 anos',
  ];

  var items8 = [
    'Acima de 35',
    '25 a 35',
    '20 a 25',
    'menos de 20',
  ];

  var items9 = [
    'Homem divorciado/vivendo separado',
    'Masculino solteiro',
    'Homem casado/viúvo',
    'Mulher',
  ];

  var items10 = [
    'Nenhum',
    'Co-aplicante',
    'Garantidor',
  ];

  var items11 = [
    '1 ano',
    '1 a 4 anos',
    '4 a 7 anos',
    'Mais de 7 anos',
  ];

  var items12 = [
    'Propiedades imobiliárias/terras',
    'Contrato com sociadade de construção e poupança/seguro de vida',
    'Carro ou outros',
    'Não disponível/sem ativos'
  ];

  var items13 = [
    '0 a 25 anos',
    '26 a 39 anos',
    '40 a 59 anos',
    '60 a 64 anos',
    'acima de 65 anos'
  ];

  var items14 = [
    'Em outros bancos',
    'Em loja de departamento ou casa de ordem de correio',
    'sem mais créditos de execução',
  ];

  var items15 = [
    'apartamento alugado',
    'apartamento próprio',
    'apartamento gratuito',
  ];

  var items16 = [
    'Um só',
    'Dois ou três',
    'Quatro ou cinco',
    'seis ou mais',
  ];

  var items17 = [
    'Desempregado/não qualificado sem residência permanente',
    'Não qualificados com residência permanente',
    'Trabalhador qualificado/empregado qualificado/menor funcionário público',
    'Funcionário público/gerente',
    'Executivo/autônomo/maior funcionário público',
  ];

  var items18 = [
    '0 a 2 anos',
    '3 ou mais anos',
  ];

  var items19 = [
    'Não',
    'Sim',
  ];

  var items20 = [
    'Não',
    'Sim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecione opções para analise"),
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
                        items: items1,
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
              // segundo dropdown
              const SizedBox(height: 16.0),
              const Text("Duração em meses"),
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
                        items: items2,
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
              // terceiro dropdown
              const SizedBox(height: 16.0),
              const Text("Pagamento de créditos anteriores"),
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
                        items: items3,
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
              // quarto dropdown
              const SizedBox(height: 16.0),
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
                        items: items4,
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
              // quinto dropdown
              const SizedBox(height: 16.0),
              const Text("Quantidade de crédito em Reais"),
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
                        items: items5,
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
              // sexto dropdown
              const SizedBox(height: 16.0),
              const Text("Valor da poupança ou das ações em Reais"),
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
                        items: items6,
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
              // setimo dropdown
              const SizedBox(height: 16.0),
              const Text("Está empregado/tempo de emprego"),
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
                        items: items7,
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
              // oitavo dropdown
              const SizedBox(height: 16.0),
              const Text("Prestação em % do rendimento disponível"),
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
                        items: items8,
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
              const SizedBox(height: 16.0),
              const Text("Estado civil/sexo"),
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
                        value: dropdownValue9,
                        items: items9,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue9 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Garantias"),
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
                        value: dropdownValue10,
                        items: items10,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue10 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
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
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue11,
                        items: items11,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue11 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Os ativos mais valiosos disponíveis"),
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
                        value: dropdownValue12,
                        items: items12,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue12 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
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
                    child: DropdownButtonHideUnderline(
                      child: CustomDropdownStyle.dropdownButton(
                        isExpanded: true,
                        value: dropdownValue11,
                        items: items11,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue11 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Idade em anos"),
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
                        value: dropdownValue13,
                        items: items13,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue13 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Outros créditos em execução"),
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
                        value: dropdownValue14,
                        items: items14,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue14 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Tipo de apartamento"),
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
                        value: dropdownValue15,
                        items: items15,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue15 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                  "Número de créditos anteriores neste banco (incluindo o em execução)"),
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
                        value: dropdownValue16,
                        items: items16,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue16 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Ocupação)"),
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
                        value: dropdownValue17,
                        items: items17,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue17 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Número de dependentes (crianças))"),
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
                        value: dropdownValue18,
                        items: items18,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue18 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Telefone"),
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
                        value: dropdownValue19,
                        items: items19,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue19 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Trabalhador estrangeiro"),
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
                        value: dropdownValue20,
                        items: items20,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue20 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              // Continue adding more sets of widgets for additional dropdowns if needed.
            ],
          ),
        ),
      ),
    );
  }
}
