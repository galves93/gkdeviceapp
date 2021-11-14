import 'package:mobx/mobx.dart';

part 'battery_store.g.dart';

class BatteryStore = _BatteryStoreBase with _$BatteryStore;
abstract class _BatteryStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}