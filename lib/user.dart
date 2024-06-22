import 'package:realm/realm.dart';

part 'user.realm.dart';

@RealmModel()
class _RealmUser {
  @PrimaryKey()
  late int id;
  late String name;
}
