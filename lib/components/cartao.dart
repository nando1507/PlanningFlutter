import 'package:flutter/material.dart';
import 'package:planningpoker/constants.dart';

class Cartao extends StatelessWidget {
  final String tamanho;

  const Cartao({Key? key, required this.tamanho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    //print((_size.width * 0.10));
    //print((_size.height * 0.25));
    return Center(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(0),
        onTap: () {
          debugPrint(tamanho);
        },
        child: SizedBox(
          width: (_size.width * 0.10),
          height: (_size.height * 0.28),
          child: Card(
            margin: const EdgeInsets.all(defaultPadding),
            borderOnForeground: true,
            elevation: 1,
            color: Colors.white,
            shadowColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      " " + tamanho,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: Text(""), flex: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      tamanho,
                      style: const TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: Text(""), flex: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      tamanho + " ",
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
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
