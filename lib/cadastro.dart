// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

import 'contato.dart';

class FormularioContato extends StatelessWidget {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoEndereco =
      TextEditingController();
  final TextEditingController _controladorCampoTelefone =
      TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoCpf = TextEditingController();

  FormularioContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Cliente'),
        shadowColor: Colors.brown,
        backgroundColor: const Color.fromARGB(255, 55, 23, 235),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EditorContato(
              controlador: _controladorCampoNome,
              rotulo: 'Nome',
              dica: 'Nome completo',
            ),
            EditorContato(
              controlador: _controladorCampoEndereco,
              rotulo: 'Endereço',
              dica: 'Endereço completo',
            ),
            EditorContato(
              controlador: _controladorCampoTelefone,
              rotulo: 'Telefone',
              dica: 'Telefone',
            ),
            EditorContato(
              controlador: _controladorCampoEmail,
              rotulo: 'Email',
              dica: 'exemplo@email.com',
              icone: Icons.email,
            ),
            EditorContato(
              controlador: _controladorCampoCpf,
              rotulo: 'CPF',
              dica: '000.000.000-00',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _cadastrarContato(
                  context,
                  _controladorCampoNome.text,
                  _controladorCampoEndereco.text,
                  _controladorCampoTelefone.text,
                  _controladorCampoEmail.text,
                  _controladorCampoCpf.text,
                );
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }

  void _cadastrarContato(
    BuildContext context,
    String nome,
    String endereco,
    String telefone,
    String email,
    String cpf,
  ) {
    debugPrint('Clicou no cadastrar');
    final String nome = _controladorCampoNome.text;
    final String endereco = _controladorCampoEndereco.text;
    final String telefone = _controladorCampoTelefone.text;
    final String email = _controladorCampoEmail.text;
    final String cpf = _controladorCampoCpf.text;
    if (nome != null &&
        endereco != null &&
        telefone != null &&
        email != null &&
        cpf != null) {
      final contatoCriado = Contato(nome, endereco, telefone, email, cpf);
      debugPrint('Criando contato');
      debugPrint('$contatoCriado');
      Navigator.pop(context, contatoCriado);
    }
  }
}

class EditorContato extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  const EditorContato({
    super.key,
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: const TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}

class ListaContato extends StatefulWidget {
  final List<Contato> _contatos = [];

  ListaContato({super.key});
  @override
  State<StatefulWidget> createState() {
    return ListaContatoState();
  }
}

class ListaContatoState extends State<ListaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes Cadastrados'),
        shadowColor: const Color.fromARGB(255, 146, 230, 90),
        backgroundColor: const Color.fromARGB(255, 55, 23, 235),
      ),
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: (context, indice) {
          final contato = widget._contatos[indice];
          return ItemContato(contato, cpf: '', email: '', endereco: '', nome: '', telefone: '',);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final Future<Contato?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioContato();
              },
            ),
          );

          future.then(
            (contatoRecebido) {
              if (contatoRecebido != null) {
                debugPrint('Chegou no then do future');
                debugPrint('$contatoRecebido');
                setState(
                  () {
                    widget._contatos.add(contatoRecebido);
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}


class Contato {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String cpf;

  Contato(
    this.nome,
    this.endereco,
    this.telefone,
    this.email,
    this.cpf,
  );

  @override
  String toString() {
    return 'Contato(nome: $nome, endereco: $endereco, telefone: $telefone, email: $email, cpf: $cpf)';
  }
}

