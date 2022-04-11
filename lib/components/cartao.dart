import 'package:flutter/material.dart';
import 'package:planningpoker/constants.dart';

class cartao extends StatelessWidget {
  final String tamanho;
  const cartao({Key? key, required this.tamanho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(0),
        onTap: () {
          debugPrint(tamanho);
        },
        child: SizedBox(
          width: 100,
          height: 208,
          child: Card(
            borderOnForeground: true,
            elevation: 1,
            color: Colors.white.withAlpha(0),
            shadowColor: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(tamanho),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding * 4,
                  width: defaultPadding,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      tamanho,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding * 4,
                  width: defaultPadding,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(tamanho),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
