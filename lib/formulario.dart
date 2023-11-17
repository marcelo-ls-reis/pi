import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String dropdownValue1 = 'Sem saldo ou debito';
  String dropdownValue2 = '6';
  String dropdownValue3 = 'sem créditos anteriores ou todos pagos';
  String dropdownValue4 = 'Carro novo';
  /*String dropdownValue2 = 'Alguns problemas';
  String dropdownValue3 = 'Nenhum';
  String dropdownValue1 = 'Nenhuma conta';
  String dropdownValue2 = 'Alguns problemas';
  String dropdownValue3 = 'Nenhum';
  String dropdownValue1 = 'Nenhuma conta';
  String dropdownValue2 = 'Alguns problemas';
  String dropdownValue3 = 'Nenhum';
  String dropdownValue1 = 'Nenhuma conta';
  String dropdownValue2 = 'Alguns problemas';
  String dropdownValue3 = 'Nenhum';
  String dropdownValue1 = 'Nenhuma conta';
  String dropdownValue2 = 'Alguns problemas';
  String dropdownValue3 = 'Nenhum';
  String dropdownValue1 = 'Nenhuma conta';*/


  var items1 = ['Sem saldo ou debito', '0 a 200 Reais', '200 Reais ou conta corrente por pelo menos 1 ano','Sem conta de execução'];
  var items2 = ['6', '6 a 12', '12 18', '18 a 24', '24 a 30', '30 a 36', '36 a 42', '42 a 48', '48 a 54', '54'];
  var items3 = ['sem créditos anteriores ou todos pagos', 'pagos os créditos anteriores neste banco', 'Sem problemas com créditos neste banco', 'Pagamento hesitante de créditos anteriores', 'conta problemática ou há outros créditos em outros bancos'];
  var items4 = ['Carro novo', 'Carro usado', 'Os itens de mobiliário', 'rádio / televisão', 'eletrodomésticos', 'reparação', 'educação', 'férias', 'reciclagem', 'negócios', 'outros'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecione as opções"),
      ),
      body: SingleChildScrollView(
  child: Container(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Saldo em conta corrente"),
        const SizedBox(height: 8.0),

        // Primeiro conjunto de widgets
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 20.0, // Limita a largura do Container
              ),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: const Offset(0, 0.5), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 0.80,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  elevation: 0,
                  value: dropdownValue1,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items1.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
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
        const SizedBox(height: 16.0),

        // Adicione mais conjuntos de widgets conforme necessário
        //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Saldo em conta corrente"),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 20.0, // Limita a largura do Container
              ),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: const Offset(0, 0.5), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 0.80,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  elevation: 0,
                  value: dropdownValue1,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items1.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
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
        const SizedBox(height: 16.0),
      ],
    ),
  ),
),


           /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Duração em meses"),
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      value: dropdownValue2,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
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
            ),*/
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Pagamento de créditos anteriores"),
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      value: dropdownValue3,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items3.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
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
            ),*/
            
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Propósito do crédito"),
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      value: dropdownValue2,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
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
            ),*/
           
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Quantidade de crédito em R\$"),
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      elevation: 0,
                      value: dropdownValue2,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
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
            ),*/
    );
  }
}
