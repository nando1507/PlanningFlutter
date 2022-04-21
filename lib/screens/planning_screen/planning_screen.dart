import 'package:flutter/material.dart';
import 'package:planningpoker/components/appbar.dart';
import 'package:planningpoker/components/cartao.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class PlanningScreen extends StatelessWidget {
  final String entrada;
  const PlanningScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var itens = ["PP", "P", "M", "G", "GG"];
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBarPadrao(
        entrada: entrada,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              child: Text(""),
              flex: 5,
            ),
            Row(
              children: const <Widget>[
                //Paint(),
              ],
            ),
            const Expanded(
              child: Text(""),
              flex: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Cartao(
                    tamanho: 'PP',
                  ),
                  Cartao(
                    tamanho: 'P',
                  ),
                  Cartao(
                    tamanho: 'M',
                  ),
                  Cartao(
                    tamanho: 'G',
                  ),
                  Cartao(
                    tamanho: 'GG',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
