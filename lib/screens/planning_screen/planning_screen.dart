import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker/components/appbar.dart';
import 'package:planningpoker/components/cartao.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/menu/menu_planing.dart';
import 'package:planningpoker/screens/planning_screen/components/chart.dart';

class PlanningScreen extends StatelessWidget {
  final String entrada;
  const PlanningScreen({
    Key? key,
    required this.entrada,
  }) : super(key: key);

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
            Chart(
              pieChartCartas: pieChartSelectionData,
            ),
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

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: 35,
    radius: 40,
    showTitle: true,
    color: azul,
    title: "PP",
  ),
  PieChartSectionData(
    value: 25,
    radius: 40,
    showTitle: true,
    color: amarelo,
    title: "P",
  ),
  PieChartSectionData(
    value: 15,
    radius: 40,
    showTitle: true,
    color: azul,
    title: "M",
  ),
  PieChartSectionData(
    value: 10,
    radius: 40,
    showTitle: true,
    color: verde,
    title: "G",
  ),
  PieChartSectionData(
    value: 5,
    radius: 40,
    showTitle: true,
    color: vermelho,
    title: "GG",
  ),
];
