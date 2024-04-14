import 'package:adf_todo_list/app/core/database/migrations/migration_001.dart';
import 'package:adf_todo_list/app/core/database/migrations/migrations.dart';

class SqliteMigrationFactory {
  List<Migration> getCreateMigrations() => [
        Migration001(),
      ];
  List<Migration> getUpgradeMigrations(int version) => [];
}
