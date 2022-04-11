import 'package:flutter/material.dart';

class cartao extends StatelessWidget {
  final String tamanho;
  const cartao({Key? key, required this.tamanho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text(tamanho),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(tamanho),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(
                  width: 8,
                  height: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
