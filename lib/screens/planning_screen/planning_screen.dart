import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker/components/cartao.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // CarouselSlider.builder(
                //   itemCount: itens.length,
                //   itemBuilder: (context, itemIndex, realIndex) {
                //     return Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Text(itens[itemIndex]),
                //     );
                //   },
                //   options: CarouselOptions(
                //     height: 100.0,
                //     autoPlay: true,
                //   ),
                // ),
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
          ],
        ),
      ),
    );
  }
}
