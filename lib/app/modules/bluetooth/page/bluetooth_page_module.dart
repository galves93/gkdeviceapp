import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothPageModule extends StatefulWidget {
  const BluetoothPageModule({Key? key}) : super(key: key);

  @override
  _BluetoothPageModuleState createState() => _BluetoothPageModuleState();
}

class _BluetoothPageModuleState extends State<BluetoothPageModule> {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  List<BluetoothDevice> devices = [];

  bool isOn = false;

  @override
  void initState() {
    super.initState();
    verifyBLEOn();
  }

  Future scanAllDevices() async {
    var scanDevices = flutterBlue.scanResults.listen((listScanResult) {
      for (var node in listScanResult) {
        devices.add(node.device);
      }
    });
    // scanDevices.cancel();
    print(devices.length);
  }

  Future readingCharacteristics(int index) async {
    List<BluetoothService> services = await devices[index].discoverServices();
    services.forEach((service) async {
      // perform action with services
      var characteristics = service.characteristics;
      for (BluetoothCharacteristic char in characteristics) {
        List<int> value = await char.read();
        print(value);
        await char.write(value);

        var descriptors = char.descriptors;
        for (BluetoothDescriptor desc in descriptors) {
          List<int> value2 = await desc.read();
          print(value2);
          await desc.write([0x12, 0x34]);
        }
      }
    });
  }

  Future verifyBLEOn() async {
    isOn = await flutterBlue.isOn;
    if (isOn) {
      print('blue ligado');
      scanAllDevices();
    } else {
      print("blue desligado");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela dentro blue"),
      ),
      body: ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(devices[index].name),
              onTap: () {},
              trailing: IconButton(
                icon: const Icon(Icons.bluetooth_connected_rounded),
                onPressed: () {
                  ExpansionTile(
                    title: Text("veja mais"),
                    children: [Container()],
                  );
                },
              ),
              leading: IconButton(
                icon: Icon(Icons.bluetooth),
                onPressed: () {
                  devices[index].connect();
                },
              ),
            );
          }),
    );
  }
}
