import 'package:flutter/material.dart';

class DensityPage extends StatefulWidget {
  const DensityPage({Key? key}) : super(key: key);

  @override
  _DensityPageState createState() => _DensityPageState();
}

class _DensityPageState extends State<DensityPage> {
  TextEditingController textEditingController = TextEditingController();

  late double maxHDensity = 0, maxMDensity = 0, maxLDensity = 0;

  late double minHDensity = 0, minMDensity = 0, minLDensity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Density Calculator'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Plot text field

            Row(
              children: [
                Text('Plot Size'),
                Container(
                  width: 200.0,
                  child: TextField(
                    controller: textEditingController,
                  ),
                )
              ],
            ),

            //Calculation button
            ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('CALCULATE')),
                ElevatedButton(onPressed: () {}, child: Text('RESET')),
              ],
            ),

            //Data presention table
            DataTable(columns: [
              DataColumn(label: Text('Value')),
              DataColumn(label: Text('MAX')),
              DataColumn(label: Text('MIN')),
            ], rows: [
              DataRow(cells: [
                DataCell(
                  Text('H.Density'),
                ),
                DataCell(
                  Text('$maxHDensity'),
                ),
                DataCell(
                  Text('$minHDensity'),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text('M.Density'),
                ),
                DataCell(
                  Text('$maxMDensity'),
                ),
                DataCell(
                  Text('$minMDensity'),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text('L.Density'),
                ),
                DataCell(
                  Text('$maxLDensity'),
                ),
                DataCell(
                  Text('$minLDensity'),
                ),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
