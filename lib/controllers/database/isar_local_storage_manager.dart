import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'key_value_store.dart';
import 'local_storage_manager.dart';

class IsarLocalStorageManager extends LocalStorageManager{

  static late Isar _isar;
  static final IsarLocalStorageManager _instance = IsarLocalStorageManager._init();
  static IsarLocalStorageManager get instance => _instance;

  IsarLocalStorageManager._init();

  ///Step 1- Creating and opening database
  Future<void> initializeDatabase() async{
    var folderInWhichDatabaseGetsCreated = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([KeyValueStoreSchema], directory: folderInWhichDatabaseGetsCreated.path);
  }

  ///Step 2- Adding data to database

  @override
  Future<void> saveStringDataToDb(String keyName, String valueReceived) async{
      await _isar.writeTxn((){
          var keyvalueStore = KeyValueStore(key: keyName, value: valueReceived);

          return _isar.keyValueStores.put(keyvalueStore);
      });
  }

  @override
  Future<void> saveBooleanDataToDb(String keyName, bool valueReceived) async{
    await _isar.writeTxn((){
      var keyvalueStore = KeyValueStore(key: keyName, value: valueReceived.toString());
      return _isar.keyValueStores.put(keyvalueStore);
    });
  }

  @override
  Future<bool?> getBoolValue(String keyName) async{
    final dataReceivedFromDb = await _isar.keyValueStores.where().keyEqualTo(keyName).findFirst();
    if(dataReceivedFromDb != null && dataReceivedFromDb.value.isNotEmpty){
      return true;
    }
    else{
      return false;
    }
  }

  @override
  Future<String?> getStringValue(String keyName) async{
    final dataReceivedFromDb = await _isar.keyValueStores.where().keyEqualTo(keyName).findFirst();
    if(dataReceivedFromDb != null && dataReceivedFromDb.value.isNotEmpty){
      return dataReceivedFromDb.value;
    }
    else{
      return null;
    }
  }

  ///Step 3 - Closing database

  @override
  Future<void> clearLocalStorage() async{
    await _isar.writeTxn((){
      return _isar.keyValueStores.clear();
    });
  }

}