import 'package:flutter/material.dart';
import 'package:planningpoker/components/cartao.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';

class PlanningScreen extends StatelessWidget {
  final String entrada;
  const PlanningScreen({Key? key, required this.entrada}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itens = ["PP", "P", "M", "G", "GG"];
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(entrada),
        actions: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: InkWell(
              onTap: () {
                print('Sair');
              },
              child: const Icon(Icons.exit_to_app),
            ),
          ),
        ],
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
                  // for (var item in itens) {
                  //    Cartao(tamanho: item.toString(),
                  // );
                  // }

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
