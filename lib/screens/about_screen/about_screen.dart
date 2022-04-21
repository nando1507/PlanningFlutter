import 'package:flutter/material.dart';
import 'package:planningpoker/components/appbar.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class AboutScreen extends StatelessWidget {
  final String entrada;
  const AboutScreen({
    Key? key,
    required this.entrada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBarPadrao(
        entrada: entrada,
      ),
      body: Center(
          child: Column(
        children: const <Widget>[
          Expanded(child: Text(""), flex: 5),
          Text("About Panel"),
          Center(
            child: CircularProgressIndicator(color: amarelo),
          ),
          Expanded(child: Text(""), flex: 5),
        ],
      )),
    );
  }
}
