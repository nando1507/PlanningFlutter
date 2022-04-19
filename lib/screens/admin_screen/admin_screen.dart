import 'package:flutter/material.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class AdminScreen extends StatelessWidget {
  final String? entrada;
  const AdminScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(entrada!),
      ),
      body: Center(
          child: Column(
        children: const <Widget>[
          Text(
            "Admin Panel",
          ),
          Center(
            child: CircularProgressIndicator(
              color: vermelho,
            ),
          ),
        ],
      )),
    );
  }
}
