import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autenticação',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  Color _corContainer = Colors.white;

  void _verificarCredenciais() {
    String nome = _nomeController.text;
    String senha = _senhaController.text;

    if (nome == 'Senai' && senha == 'mobile23') {
      setState(() {
        _corContainer = Colors.green;
      });
    } else {
      setState(() {
        _corContainer = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autenticação'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _senhaController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 50,
                color: _corContainer,
                child: Center(
                  child: Text(
                    'Clique para Verificar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _verificarCredenciais,
                child: Text('Verificar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
