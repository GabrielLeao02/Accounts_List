import 'package:flutter/material.dart';
import 'package:news_list/presenter/home/ui/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: ClipOval(
              child: Image(
                height: 150,
                image: AssetImage('assets/app/splash.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _emailController,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              decoration: const InputDecoration(labelText: 'E-mail'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira o seu nome';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira uma senha valida';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState != null) {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                  // String name = _passwordController.text;
                  // String email = _emailController.text;
                }
              }
            },
            child: const Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
