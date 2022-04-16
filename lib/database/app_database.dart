import 'dart:async';
import 'package:planningpoker/database/dao/login_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'planningPoker.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(LoginDao.tableContactSql);
    },
    version: 1,
    //onDowngrade: onDatabaseDowngradeDelete,
  );
}