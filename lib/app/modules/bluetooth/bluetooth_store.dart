import 'package:mobx/mobx.dart';

part 'bluetooth_store.g.dart';

class BluetoothStore = _BluetoothStoreBase with _$BluetoothStore;
abstract class _BluetoothStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}