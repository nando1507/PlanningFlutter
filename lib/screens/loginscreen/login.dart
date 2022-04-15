import 'package:flutter/material.dart';
import 'package:planningpoker/constants.dart';
import 'components/botao.dart';
import 'components/campo_texto.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: (_size.width) >= 400 ? 400 : _size.width * 0.9,
          color: secondaryColor,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                //height: 150.0,
                child: Image.asset(
                  Logo,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 40.0),
              const CampoTexto(entrada: "Email", ocultar: false),
              const SizedBox(height: 25.0),
              const CampoTexto(entrada: "Password", ocultar: true),
              const SizedBox(height: 30.0),
              const BotaoLogin(entrada: "Login", icone: Icons.arrow_forward, cor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
