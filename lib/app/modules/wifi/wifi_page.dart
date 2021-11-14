import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gkdeviceapplication/app/modules/wifi/wifi_store.dart';
import 'package:flutter/material.dart';
import 'package:wifi_info_plugin_plus/wifi_info_plugin_plus.dart';

class WifiPage extends StatefulWidget {
  final String title;
  const WifiPage({Key? key, this.title = 'Wifi Page'}) : super(key: key);
  @override
  WifiPageState createState() => WifiPageState();
}

class WifiPageState extends State<WifiPage> {
  final WifiStore store = Modular.get();

  WifiInfoWrapper? _wifiObject;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    WifiInfoWrapper? wifiObject;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      wifiObject = await WifiInfoPlugin.wifiDetails;
    } on PlatformException {
      return;
    }
    if (!mounted) return;

    setState(() {
      _wifiObject = wifiObject;
    });
  }

  @override
  Widget build(BuildContext context) {
    String ipAddress =
        _wifiObject != null ? _wifiObject!.ipAddress.toString() : "...";

    String macAddress =
        _wifiObject != null ? _wifiObject!.macAddress.toString() : '...';
    String connectionType = _wifiObject != null
        ? _wifiObject!.connectionType.toString()
        : 'unknown';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text('Running on IP:' + ipAddress),
          ),
          Center(
            child: Text('Running on Mac:' + macAddress),
          ),
          Center(
            child: Text('Connection type:' + connectionType),
          ),
        ]),
      ),
    );
  }
}
