import 'package:adf_todo_list/app/core/database/migrations/migrations.dart';
import 'package:sqflite_common/sqlite_api.dart';

class Migration001 extends Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      create table todo(
        id Integer primary key autoincrement,
        descricao varchar(500) not null,
        data_hora datetime,
        finalizado integer
      );
    ''');
    print("Migration 001 executada");
  }

  @override
  void update(Batch batch) {
    // TODO: implement update
  }
}
