import 'package:flutter/material.dart';
import 'package:planningpoker/constants.dart';

class AccountHeader extends StatelessWidget {
  final String contaUsuario;
  final String contaEmail;
  final String? imageAccount;

  const AccountHeader({
    Key? key,
    required this.contaUsuario,
    required this.contaEmail,
    this.imageAccount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      arrowColor: Colors.white,
      accountName: Text(contaUsuario),
      accountEmail: Text(contaEmail),
      currentAccountPicture: CircleAvatar(
        radius: 40.0,
        backgroundImage: imageAccount != null ? NetworkImage(imageAccount!) : null,
        child: imageAccount == null
            ? Text(
                contaUsuario.substring(1, 1),
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              )
            : null,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
