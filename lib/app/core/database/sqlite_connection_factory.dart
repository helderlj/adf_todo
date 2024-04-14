import 'dart:async';

import 'package:adf_todo_list/app/core/database/sqlite_migration_factory.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';

class SqliteConnectionFactory {
  static SqliteConnectionFactory? _instance;
  static const _VERSION = 1;
  static const _DATABASE_NAME = 'TODO_LIST_DB';

  SqliteConnectionFactory._();

  Database? _db;
  final _lock = Lock();

  factory SqliteConnectionFactory() {
    _instance ??= SqliteConnectionFactory._();
    return _instance!;
  }

  Future<Database> openConnection() async {
    var databasePath = await getDatabasesPath();
    var databasePathFinal = join(databasePath, _DATABASE_NAME);
    if (_db == null) {
      await _lock.synchronized(() async {
        _db ??= await openDatabase(
          databasePathFinal,
          version: _VERSION,
          onConfigure: _onConfigure,
          onCreate: _onCreate,
          onUpgrade: _onUpgrade,
          onDowngrade: _onDowngrade,
        );
      });
    }
    print("Database criado em $databasePathFinal");
    return _db!;
  }

  void closeConnection() {
    _db?.close();
    _db = null;
  }

  FutureOr<void> _onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON;");
  }

  FutureOr<void> _onCreate(Database db, int version) {
    final batch = db.batch();
    final migrations = SqliteMigrationFactory().getCreateMigrations();

    for (var migration in migrations) {
      migration.create(batch);
    }

    batch.commit();
  }

  FutureOr<void> _onUpgrade(Database db, int oldVersion, int newVersion) {
    final batch = db.batch();
    final migrations =
        SqliteMigrationFactory().getUpgradeMigrations(oldVersion);

    for (var migration in migrations) {
      migration.update(batch);
    }

    batch.commit();
  }

  FutureOr<void> _onDowngrade(Database db, int oldVersion, int newVersion) {}
}
