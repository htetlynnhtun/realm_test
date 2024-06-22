import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';
import 'package:realm_test/user.dart';

void main() {
  test('Some unit test with in memory config', () {
    final realm = Realm(Configuration.inMemory([
      RealmUser.schema,
    ]));
    addTearDown(realm.close);

    realm.writeAsync(() {
      realm.add(RealmUser(1, 'john'));
    });
  });
}
