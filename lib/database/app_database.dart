import 'dart:async';
import 'package:planningpoker/database/dao/login_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  var databasesPath = await getDatabasesPath();

  final String path = join(databasesPath, 'planningPoker.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(LoginDao.tableContactSql);
      print(LoginDao.tableContactSql);
    },
    version: 1,
    onDowngrade: onDatabaseDowngradeDelete,
  );
}
