import 'package:flutter/material.dart';
import 'package:planningpoker/screens/about_screen/about_screen.dart';
import 'package:planningpoker/screens/admin_screen/admin_screen.dart';
import 'package:planningpoker/screens/planning_screen/planning_screen.dart';
import 'package:planningpoker/screens/retrospectiva_screen/retrospectiva_screen.dart';

class Navigation {
  String title;
  IconData icon;
  Widget press;

  Navigation({
    required this.title,
    required this.icon,
    required this.press,
  });
}

List<Navigation> itensNavegacao = [
  Navigation(title: 'Planning', icon: Icons.casino_sharp, press: const PlanningScreen(entrada: "Planning")),
  Navigation(title: 'Retrospectiva', icon: Icons.account_tree_sharp, press: const RetrospectivaScreen(entrada: "Retrospectiva")),
  Navigation(title: 'Gestão de Acesso', icon: Icons.account_box, press: const AdminScreen(entrada: 'Gestão de Acesso')),
  Navigation(title: 'Sobre o Time', icon: Icons.badge_rounded, press: const AboutScreen(entrada: 'Sobre o Time'))
];
