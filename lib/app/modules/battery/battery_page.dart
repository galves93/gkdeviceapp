import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:battery_info/model/android_battery_info.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'battery_store.dart';

class BatteryPage extends StatefulWidget {
  final String title;
  const BatteryPage({Key? key, this.title = 'Battery Page'}) : super(key: key);
  @override
  BatteryPageState createState() => BatteryPageState();
}

class BatteryPageState extends State<BatteryPage> {
  final BatteryStore store = Modular.get();

  Widget _getChargeTime(AndroidBatteryInfo data) {
    if (data.chargingStatus == ChargingStatus.Charging) {
      return data.chargeTimeRemaining == -1
          ? const Text("Calculating charge time remaining")
          : Text(
              "Charge time remaining: ${(data.chargeTimeRemaining! / 1000 / 60).truncate()} minutes");
    }
    return const Text("Battery is full or not connected to a power source");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FutureBuilder<dynamic>(
                    future: BatteryInfoPlugin().androidBatteryInfo,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                            'Battery Health: ${snapshot.data!.health!.toUpperCase()}');
                      }
                      return const CircularProgressIndicator();
                    }),
                const SizedBox(
                  height: 20,
                ),
                StreamBuilder<dynamic>(
                    stream: BatteryInfoPlugin().androidBatteryInfoStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Text("Voltage: ${(snapshot.data!.voltage)} mV"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Charging status: ${(snapshot.data!.chargingStatus.toString().split(".")[1])}"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Battery Level: ${(snapshot.data!.batteryLevel)} %"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Battery Capacity: ${(snapshot.data!.batteryCapacity! / 1000)} mAh"),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("Technology: ${(snapshot.data!.technology)} "),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Battery present: ${snapshot.data!.present! ? "Yes" : "False"} "),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("Scale: ${(snapshot.data!.scale)} "),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Remaining energy: ${-(snapshot.data!.remainingEnergy! * 1.0E-9)} Watt-hours,"),
                            const SizedBox(
                              height: 20,
                            ),
                            _getChargeTime(snapshot.data!),
                          ],
                        );
                      }
                      return const CircularProgressIndicator();
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
