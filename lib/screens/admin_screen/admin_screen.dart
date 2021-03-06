import 'package:flutter/material.dart';
import 'package:planningpoker/components/appbar.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class AdminScreen extends StatelessWidget {
  final String entrada;
  const AdminScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBarPadrao(
        entrada: entrada,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const Expanded(child: Text(""), flex: 5),
          Text(entrada),
          const Center(
            child: CircularProgressIndicator(color: vermelho),
          ),
          const Expanded(child: Text(""), flex: 5),
        ],
      )),
    );
  }
}
