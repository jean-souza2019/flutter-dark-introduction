import 'package:flutter/material.dart';
import 'package:flutter_app_aula2_ex1/language.dart';

class AddLanguage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _plataformaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Linguagem"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Nome da linguagem",
                    labelText: "Nome da linguagem"),
                controller: _nameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Insira o nome da linguagem';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Detalhe da linguagem",
                    labelText: "Detalhe da linguagem"),
                controller: _detailController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Insira o detalhe da linguagem';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Plataforma'", labelText: "Plataforma'"),
                controller: _plataformaController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Insira o detalhe da plataforma';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Language language = Language(_nameController.text,
                          _detailController.text, _plataformaController.text);
                      Navigator.pop(context, language);
                    }
                  },
                  child: Text('Gravar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
