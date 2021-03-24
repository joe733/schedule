import 'package:flutter/material.dart';
//import 'package:table_sticky_headers/table_sticky_headers.dart';

class TimeTable extends StatelessWidget {
  final List<String> weekDays = [
    ' ',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  final List<String> periods = [' ', 'I', 'II', 'III', 'IV', 'V'];
  final List<String> subject = ['EIA', 'DMW', 'ES', 'AI/PIS', 'Project'];
  /*
  final List<List<String>> ttData = [
    ['DMW', 'ES', 'DMW', 'EIA', ' '],
    ['DMW', 'ES', 'DMW', 'AI/PIS', ' '],
    ['AI/PIS', 'ES', 'ES', 'DMW', 'Project'],
    ['DMW', 'AI/PIS', 'AI/PIS', 'EIA', 'Project'],
    ['AI/PIS', 'ES', 'EIA', 'EIA', 'Project'],
  ];*/

  List<DataRow> rowHeaders = [];
  List<DataColumn> colHeaders = [];
  void _buildTable() {
    colHeaders = [
      DataColumn(label: Text(periods[0])),
      DataColumn(label: Text(periods[1])),
      DataColumn(label: Text(periods[2])),
      DataColumn(label: Text(periods[3])),
      DataColumn(label: Text(periods[4])),
      DataColumn(label: Text(periods[5])),
    ];

    rowHeaders = [
      DataRow(cells: [
        //Monday
        DataCell(Text(weekDays[1])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[0])),
        DataCell(Text(' ')),
      ]),
      DataRow(cells: [
        //Tuesday
        DataCell(Text(weekDays[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[3])),
        DataCell(Text(' ')),
      ]),
      DataRow(cells: [
        //Wednesday
        DataCell(Text(weekDays[3])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[4])),
      ]),
      DataRow(cells: [
        //Thursday
        DataCell(Text(weekDays[4])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[0])),
        DataCell(Text(subject[4])),
      ]),
      DataRow(cells: [
        DataCell(Text(weekDays[5])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[0])),
        DataCell(Text(subject[0])),
        DataCell(Text(subject[4])),
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _buildTable();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: DataTable(
        dividerThickness: 0.0,
        columns: colHeaders,
        rows: rowHeaders,
      ),
    );
  }
}
