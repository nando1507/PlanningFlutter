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
            ListTile(
              leading: const Icon(Icons.album),
              title: Text(tamanho),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
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
