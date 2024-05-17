import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff3d955),
        child: Column(
          children: [
            _logoImage(),
            _introductionText(),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Container(
                  margin: const EdgeInsets.only(top: 75),
                  child: Column(
                    children: [
                      _inputField('Login', 'olivier@mail.com'),
                      _inputField('Senha'),
                      _loginButton()
                    ],
                  ),
                )
            ),
            _registerButton()
          ],
        ),
      ),
    );
  }

  Container _registerButton() {
    return Container(
            margin: const EdgeInsets.only(top: 75),
            child: const Text(
              'Novo(a) por aqui? Cadastre-se',
              style: TextStyle(
                color: Color(0xff4a368d),
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }

  GestureDetector _loginButton() {
    return GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 50, left: 50, top: 50),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xff4a368d),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Logar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    );
  }

  Container _inputField(hintText, content) {
    return Container(
                      margin: const EdgeInsets.only(right: 50, left: 50, bottom: 25),
                      child: TextFormField(
                        validator: (value) {
                          if (value == content) {
                            return 'Please enter your $hintText';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: hintText,
                          hintStyle: const TextStyle(
                            color: Color(0xff4a368d),
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                    );
  }

  Padding _introductionText() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              margin: const EdgeInsets.only(top: 75),
              child: const Text(
                'Que tal conhecer novas pessoas hoje? Bora?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4a368d),
                ),
                textAlign: TextAlign.center,
              )
            ),
          );
  }

  Container _logoImage() {
    return Container(
            margin: const EdgeInsets.only(top: 100),
            alignment: Alignment.center,
            child: Image.asset(
              './assets/logo.png',
              width: 200,
              fit: BoxFit.contain,
            )
          );
  }
}