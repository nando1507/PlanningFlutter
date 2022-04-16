import 'package:flutter/material.dart';
import 'package:planningpoker/screens/about_screen/about_screen.dart';
import 'package:planningpoker/screens/admin_screen/admin_screen.dart';
import 'package:planningpoker/screens/planning_screen/planning_screen.dart';
import 'package:planningpoker/screens/retrospectiva_screen/retrospectiva_screen.dart';

import 'components/account_header.dart';
import 'components/item_menu.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          AccountHeader(
            contaUsuario: "fernandob.calo",
            contaEmail: "fernandob.calo@outlook.com",
            imageAccount: "https://avatars.githubusercontent.com/u/22230099?s=400&u=2c5b79aa5d34999931469a011fc139dace714b3b&v=4",
          ),
          DrawerListTile(
            icone: Icons.casino_sharp,
            title: 'Planning',
            press: PlanningScreen(
              entrada: "Planning",
            ),
          ),
          DrawerListTile(
            icone: Icons.account_tree_sharp,
            title: 'Retrospectiva',
            press: RetrospectivaScreen(
              entrada: 'Retrospectiva',
            ),
          ),
          DrawerListTile(
            icone: Icons.account_box,
            title: 'Gestão de Acesso',
            press: AdminScreen(
              entrada: 'Gestão de Acesso',
            ),
          ),
          DrawerListTile(
            icone: Icons.badge_rounded,
            title: 'Sobre o Time',
            press: AboutScreen(
              entrada: 'Sobre o Time',
            ),
          ),
        ],
      ),
    );
  }
}
