import 'package:flutter/material.dart';
import 'package:planningpoker/components/constants.dart';

TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

class CampoTexto extends StatelessWidget {
  final String entrada;
  final bool ocultar;
  final IconData icone;
  final TextEditingController controllerEntrada;

  const CampoTexto({
    Key? key,
    required this.entrada,
    required this.ocultar,
    required this.icone,
    required this.controllerEntrada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: ocultar,
      style: style,
      decoration: InputDecoration(
        prefixIcon: Icon(icone),
        contentPadding: const EdgeInsets.all(defaultPadding),
        hintText: entrada,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
      ),
    );
  }
}
