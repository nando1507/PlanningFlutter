import 'package:flutter/material.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/screens/login_screen/components/botao_login.dart';
import 'package:planningpoker/screens/planning_screen/planning_screen.dart';
import 'components/campo_texto.dart';

class LoginScreen extends StatelessWidget {
  final String? entrada;
  const LoginScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController senhaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(entrada!),
      ),
      body: Center(
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
                    logo,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 40.0),
                CampoTexto(
                  entrada: "Email",
                  ocultar: false,
                  icone: Icons.email,
                  controllerEntrada: usuarioController,
                ),
                const SizedBox(height: 25.0),
                CampoTexto(
                  entrada: "Password",
                  ocultar: true,
                  icone: Icons.password,
                  controllerEntrada: senhaController,
                ),
                const SizedBox(height: 30.0),
                BotaoLogin(
                  usuario: usuarioController.text,
                  senha: senhaController.text,
                  entrada: "Login",
                  icone: Icons.arrow_forward,
                  cor: Colors.white,
                  navegar: const PlanningScreen(
                    entrada: "Planning",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
