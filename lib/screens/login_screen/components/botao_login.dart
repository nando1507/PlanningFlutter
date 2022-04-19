import 'package:flutter/material.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/database/dao/login_dao.dart';

TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
LoginDao dao = LoginDao();

class BotaoLogin extends StatelessWidget {
  final String entrada;
  final IconData icone;
  final Color cor;
  final Widget navegar;
  final String? usuario;
  final String? senha;

  const BotaoLogin(
    this.senha,
    this.usuario, {
    Key? key,
    required this.entrada,
    required this.icone,
    required this.cor,
    required this.navegar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(defaultPadding),
      child: FloatingActionButton.extended(
        //icon: const Icon(Icons.add),
        backgroundColor: primaryColor,

        label: Text(
          entrada,
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: cor,
          ),
        ),
        icon: Icon(icone, color: cor),
        onPressed: () {
          // dao.Logar(this.usuario, this.senha).then((value) => (

          // ));

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => navegar,
            ),
          );
        },
      ),
    );
  }
}
