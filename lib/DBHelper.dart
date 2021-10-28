import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  late Database _db;

  Future<Database> getDb() async {
    String dBpath = await getDatabasesPath();
    String path = join(dBpath, 'localdb.db');
    if (_db == null) {
      _db = await openDatabase(
          path); //singleInstance defaults to true. Readonly defaults to false
    }
    return _db;
  }
}