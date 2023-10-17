import 'package:isar/isar.dart';

part 'key_value_store.g.dart';

@collection
class KeyValueStore{
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  String key;
  String value;

  KeyValueStore({required this.key, required this.value});
}