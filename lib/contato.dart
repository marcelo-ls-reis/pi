import 'package:flutter/material.dart';
import 'cadastro.dart';

class ItemContato extends StatelessWidget {
  final Contato _contato;

  const ItemContato(this._contato, {Key? key, required String cpf, required String email, required String endereco, required String nome, required String telefone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _contato.nome,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Telefone: ${_contato.telefone}'),
          Text('Endereço: ${_contato.endereco}'),
          Text('E-mail: ${_contato.email}'),
          Text('CPF: ${_contato.cpf}'),
        ],
      ),
      onTap: () {
        // Adicione a lógica de navegação ou ação ao tocar no ListTile, se necessário
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalhesContato(_contato),
          ),
        );
      },
    );
  }
}

class DetalhesContato extends StatelessWidget {
  final Contato _contato;

  const DetalhesContato(this._contato, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Contato'),
        shadowColor: const Color.fromARGB(255, 146, 230, 90),
        backgroundColor: const Color.fromARGB(255, 55, 23, 235),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nome: ${_contato.nome}'),
          Text('Telefone: ${_contato.telefone}'),
          Text('Endereço: ${_contato.endereco}'),
          Text('E-mail: ${_contato.email}'),
          Text('CPF: ${_contato.cpf}'),
          // Adicione mais detalhes conforme necessário
        ],
      ),
    );
  }
}
