abstract class LocalStorageManager{
  Future<void> saveStringDataToDb(String keyName, String value);
  Future<void> saveBooleanDataToDb(String keyName, bool value);
  Future<String?> getStringValue(String keyName);
  Future<bool?> getBoolValue(String keyName);
  Future<void> clearLocalStorage();
}