import 'package:flutter/material.dart';

class Navegador extends StatelessWidget {
  final Object pagina;
  const Navegador({Key? key, required this.pagina}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Navigator(
        // pages: Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext (context) => pagina))),

        );
  }
}
