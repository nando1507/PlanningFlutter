import 'package:flutter/material.dart';
import 'package:planningpoker/Screens/login_screen/login.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class AboutScreen extends StatelessWidget {
  final String entrada;
  const AboutScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(entrada),
        actions: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(entrada: "Planning"),
                  ),
                );
              },
              child: const Icon(Icons.exit_to_app_sharp),
            ),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: const <Widget>[
          Text(
            "About Panel",
          ),
          Center(
            child: CircularProgressIndicator(
              color: amarelo,
            ),
          ),
        ],
      )),
    );
  }
}
