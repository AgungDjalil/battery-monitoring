// import 'package:battery_monitoring/apis/fetch_data.dart';
// import 'package:battery_monitoring/models/monitoring_data.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class RealTimeGraph extends StatefulWidget {
//   const RealTimeGraph({super.key});

//   @override
//   State<RealTimeGraph> createState() => _RealTimeGraphState();
// }

// class _RealTimeGraphState extends State<RealTimeGraph> {
//   final FetctFromFirebase fetcher = FetctFromFirebase();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<SalesData>>(
//       stream: fetcher.streamData(), // Stream mengembalikan List<SalesData>
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(child: Text("Error: ${snapshot.error}"));
//         } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
//           return Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: SfCartesianChart(
//                 primaryXAxis: CategoryAxis(
//                   majorGridLines: MajorGridLines(width: 0),
//                 ),
//                 title: ChartTitle(text: "Voltage"),
//                 series: <CartesianSeries<SalesData, String>>[
//                   LineSeries<SalesData, String>(
//                     dataSource: snapshot.data!,
//                     xValueMapper: (SalesData sales, _) => sales.year,
//                     yValueMapper: (SalesData sales, _) => sales.sales,
//                     dataLabelSettings: DataLabelSettings(isVisible: true),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         } else {
//           return Center(child: Text("No data available"));
//         }
//       },
//     );
//   }
// }
