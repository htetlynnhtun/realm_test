import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';

void main() {
  test('Init', () {
    final realm = Realm(Configuration.inMemory([]));
    addTearDown(realm.close);
  });
}
