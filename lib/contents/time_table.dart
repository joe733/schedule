import 'package:flutter/material.dart';
//import 'package:table_sticky_headers/table_sticky_headers.dart';

//ignore: must_be_immutable
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
  final List<String> gnrl_time = [
    ' ',
    '09:15',
    '10:10',
    '11:40',
    '12:35',
    '14:00'
  ];
  final List<String> spcl_time = [
    ' ',
    '09:15',
    '10:00',
    '11:00',
    '11:45',
    '14:00'
  ];
  final List<String> subject = ['EIA', 'DMW', 'ES', 'AI/PIS', 'Project'];
  /*
  final List<List<String>> ttData = [
    [' ',    'I',      'II'      'III',    'IV',     'V'      ],
    [' ',    '09:15',  '10:10'   '11:40',  '12:35',  '14:00'  ],
    ['Mon',  'EIA',    'ES',     'DMW',    'EIA',    ' '      ],
    ['Tue',  'DMW',    'ES',     'DMW',    'AI/PIS', ' '      ],
    ['Wed',  'AI/PIS', 'ES',     'ES',     'DMW',    'Project'],
    ['Thu',  'DMW',    'AI/PIS', 'AI/PIS', 'EIA',    'Project'],
    [' ',    '09:15',  '10:00'   '11:00',  '11:45',  '14:00'  ],
    ['Fri',  'AI/PIS', 'ES',     'EIA',    'EIA',    'Project'],
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
        //General Timings
        DataCell(Text(gnrl_time[0])),
        DataCell(Text(
          gnrl_time[1],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          gnrl_time[2],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          gnrl_time[3],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          gnrl_time[4],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          gnrl_time[5],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ]),
      DataRow(cells: [
        //Monday
        DataCell(Text(
          weekDays[1],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(subject[0])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[0])),
        DataCell(Text(' ')),
      ]),
      DataRow(cells: [
        //Tuesday
        DataCell(Text(
          weekDays[2],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[3])),
        DataCell(Text(' ')),
      ]),
      DataRow(cells: [
        //Wednesday
        DataCell(Text(
          weekDays[3],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[2])),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[4])),
      ]),
      DataRow(cells: [
        //Thursday
        DataCell(Text(
          weekDays[4],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(subject[1])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[3])),
        DataCell(Text(subject[0])),
        DataCell(Text(subject[4])),
      ]),
      DataRow(cells: [
        //Special Timings
        DataCell(Text(spcl_time[0])),
        DataCell(Text(
          spcl_time[1],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          spcl_time[2],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          spcl_time[3],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          spcl_time[4],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        DataCell(Text(
          gnrl_time[5],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ]),
      DataRow(cells: [
        //Friday
        DataCell(Text(
          weekDays[5],
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
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
