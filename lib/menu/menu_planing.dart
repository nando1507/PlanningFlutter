import 'package:flutter/material.dart';

import 'components/account_header.dart';
import 'components/item_menu.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const AccountHeader(
            contaUsuario: "fernandob.calo",
            contaEmail: "fernandob.calo@outlook.com",
            imageAccount: "https://avatars.githubusercontent.com/u/22230099?s=400&u=2c5b79aa5d34999931469a011fc139dace714b3b&v=4",
          ),
          DrawerListTile(
            icone: Icons.casino_sharp,
            title: 'Planning',
            press: () {
              print('Planning');
            },
          ),
          DrawerListTile(
            icone: Icons.account_tree_sharp,
            title: 'Retrospectiva',
            press: () {
              print('Retrospectiva');
            },
          ),
          DrawerListTile(
            icone: Icons.account_box,
            title: 'Gestão de Acesso',
            press: () {
              print('Gestão de Acessos');
            },
          ),
          DrawerListTile(
            icone: Icons.badge_rounded,
            title: 'Sobre o Time',
            press: () {
              print('Sobre o time');
            },
          ),
        ],
      ),
    );
  }
}
