import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker/components/constants.dart';

class Chart extends StatelessWidget {
  final List<PieChartSectionData> pieChartCartas;
  const Chart({
    Key? key,
    required this.pieChartCartas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: <Widget>[
          PieChart(
            PieChartData(
              sections: pieChartCartas,
              sectionsSpace: 3,
              startDegreeOffset: -90,
              centerSpaceRadius: 100, //tamanho do grafico
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "Votação",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 0.1,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
