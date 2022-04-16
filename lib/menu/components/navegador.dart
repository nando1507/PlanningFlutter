import 'package:flutter/material.dart';

class Navegador extends StatelessWidget {
  final Widget navegar;
  const Navegador({Key? key, required this.navegar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Navigator(
        // pages: [
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => navegar,
        //   ),
        // )
        // ],
        );
  }
}
