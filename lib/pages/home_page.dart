import 'package:battery_monitoring/apis/fetch_data.dart';
import 'package:battery_monitoring/widget/elevated_button.dart';
import 'package:battery_monitoring/widget/percent_indicator.dart';
import 'package:battery_monitoring/widget/realtime_graph.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final FetctFromFirebase fethcer = FetctFromFirebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4A628A),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "10:02",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "PM",
                  style: TextStyle(
                    color: Color(0xffa4adbe),
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xffa4adbe),
              height: 2.5,
              thickness: 2,
              indent: 140,
              endIndent: 140,
            ),
            const SizedBox(
              height: 30,
            ),
            const PercentIndicator(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BuildElevatedButton(
                    label: "Voltage",
                    pathIcon: "assets/icons/voltage_icon.png",
                  ),
                  BuildElevatedButton(
                    label: "Current",
                    pathIcon: "assets/icons/current_icon.png",
                  ),
                  BuildElevatedButton(
                    label: "temperature",
                    pathIcon: "assets/icons/temperature_icon.png",
                  ),
                  BuildElevatedButton(
                    label: "SoH",
                    pathIcon: "assets/icons/soh_icon.png",
                  ),
                  BuildElevatedButton(
                    label: "C Rate",
                    pathIcon: "assets/icons/c_rate_icon.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            StreamBuilder(
              stream: fethcer.streamData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: CircularProgressIndicator()); // Menunggu data
                } else if (snapshot.hasError) {
                  print('Error: ${snapshot.error}'); // Menampilkan error
                  return Center(
                      child: Text(
                          'Error: ${snapshot.error}')); // Menampilkan error ke UI
                } else if (snapshot.hasData) {
                  print('temperature: ${snapshot.data}');

                  return Center(
                    child: Text(
                        'Data: ${snapshot.data}'), // Menampilkan data di UI
                  );
                } else {
                  print('No data available'); // Jika tidak ada data
                  return Center(
                      child:
                          Text('No data available')); // Menampilkan pesan ke UI
                }
              },
            )

            // Expanded(child: RealTimeGraph())
          ],
        ),
      ),
    );
  }
}
