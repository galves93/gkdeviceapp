import 'package:mobx/mobx.dart';

part 'wifi_store.g.dart';

class WifiStore = _WifiStoreBase with _$WifiStore;
abstract class _WifiStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}