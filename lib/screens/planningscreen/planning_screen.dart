import 'package:flutter/widgets.dart';
import 'package:planningpoker/components/cartao.dart';

class PlanningScreen extends StatelessWidget {
  const PlanningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
        ],
      ),
    );
  }
}
