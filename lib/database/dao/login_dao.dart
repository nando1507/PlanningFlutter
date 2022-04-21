import 'package:planningpoker/models/login.dart';
import 'package:sqflite/sqflite.dart';

import '../app_database.dart';

class LoginDao {
  static const String _tableName = 'Users';
  static const String _id = 'id';
  static const String _usuario = 'usuario';
  static const String _senha = 'senha';
  static const String _nome = 'nome';
  static const String _dataCadastro = 'dataCadastro';

  static const String tableContactSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_usuario TEXT, '
      '$_senha TEXT, '
      '$_nome TEXT, '
      '$_dataCadastro DateTime '
      ')';

  Future<int> salvar(Login login) async {
    final Database db = await getDatabase();
    Map<String, dynamic> usersMap = _mapear(login);
    return db.insert(_tableName, usersMap);
  }

  Map<String, dynamic> _mapear(Login login) {
    final Map<String, dynamic> usersMap = {};
    usersMap[_id] = login.id;
    usersMap[_usuario] = login.usuario;
    usersMap[_senha] = login.senha;
    usersMap[_nome] = login.nome;
    usersMap[_dataCadastro] = login.dataCadastro;

    return usersMap;
  }

  Future<List<Login>> buscarTodos() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> resultado = await db.query(_tableName);
    List<Login> users = _listar(resultado);
    return users;
  }

  List<Login> _listar(List<Map<String, dynamic>> resultado) {
    final List<Login> listUsers = [];
    for (Map<String, dynamic> row in resultado) {
      final Login users = Login(
        row[_id],
        row[_usuario],
        row[_senha],
        row[_nome],
        row[_dataCadastro],
      );
      listUsers.add(users);
    }
    return listUsers;
  }

  Future<String> logar(String _usuario, String _senha) async {
    final Database db = await getDatabase();
    //final List<Map<String, dynamic>> resultado = await db.query(_tableName);
    //List<Login> users = _listar(resultado);
    // for (int i = 0; i < users.length; i++) {
    //   if (users[i].usuario == usuario && users[i].senha == Senha) {
    var aux = db
        .rawQuery(
          'Select Count(*) from $_tableName where $_usuario = "$_usuario" and $_senha = "$_senha"',
        )
        .toString();
    print(aux);
    return aux;
    // } else {
    //   return false;
    // }
    // }
  }
}
