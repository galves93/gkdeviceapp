import 'package:flutter_test/flutter_test.dart';
import 'package:gkdeviceapplication/app//modules/bluetooth/bluetooth_store.dart';
 
void main() {
  late BluetoothStore store;

  setUpAll(() {
    store = BluetoothStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}