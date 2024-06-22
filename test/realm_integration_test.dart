import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';
import 'package:realm_test/user.dart';

void main() {
  final realm = Realm(Configuration.local([
    RealmUser.schema,
  ]));

  setUp(() async {
    await realm.writeAsync(() {
      realm.deleteAll<RealmUser>();
    });
  });

  tearDownAll(realm.close);

  test('Some integration test with local config', () {
    realm.writeAsync(() {
      realm.add(RealmUser(1, 'john'));
    });
  });
}
