import 'dart:math';

import 'package:covid_app/global.dart';
import 'package:covid_app/object/state.dart';
import 'package:flutter/material.dart';

class StatesTable extends StatefulWidget {
  final List<StateObject> states;
  StatesTable({this.states});

  @override
  _StatesTableState createState() => _StatesTableState();
}

class _StatesTableState extends State<StatesTable> {
  BoxDecoration evenRow = BoxDecoration(
    color: blue1.withOpacity(.4)
  );

  Widget createTable() {
    List<TableRow> rows = [];
    rows.add(TableRow(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: blue3, style: BorderStyle.solid, width: 2))
      ),
      children: [
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text("State", style: black18)),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text("New", style: black18)),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text("Infected", style: black18)),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text("Death", style: black18)),
    ]));
    for (int i = 0; i < widget.states.length; i++) {
      rows.add(TableRow(
        decoration: i%2 != 0 ? evenRow : null,
        children: [
        Text(widget.states[i].name, style: black18Reg),
        Text(widget.states[i].newCase, style: black18Reg, textAlign: TextAlign.right),
        Text(widget.states[i].infected, style: black18Reg, textAlign: TextAlign.right),
        Text(widget.states[i].death, style: black18Reg, textAlign: TextAlign.right),
      ]));
    }
    return Table(
      columnWidths: {
        0: FlexColumnWidth(2.5),
        1: FlexColumnWidth(1.5),
        2: FlexColumnWidth(1.5),
        3: FlexColumnWidth(1.5)
      },
        // border:
        //     TableBorder.all(color: blue3, width: 1.5, style: BorderStyle.solid),
        children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text("Pandemic Cases", style: black24)),
            createTable(),
          ],
        ));
  }
}

class CreateTableRow extends StatelessWidget {
  final String str;
  CreateTableRow({this.str});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.str,
      style: black18Reg,
    );
  }
}
