import 'package:covid_app/global.dart';
import 'package:covid_app/object/state.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectState extends StatefulWidget {
  final List<StateObject> states;
  SelectState({this.states});

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  Future<bool> _savePrefsState(int prefsState) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString('PrefsState', prefsState.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              blue3,
              blue2,
            ], end: Alignment.bottomRight)),
            child: Text("Select State", style: headerWhite),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: widget.states.length,
                  itemBuilder: (context, index) {
                    var state = widget.states[index];
                    //print(widget.states.length);
                    return InkWell(
                      onTap: () {
                        _savePrefsState(index);
                        Navigator.of(context).pop();
                      },
                      child: ListTile(
                        title: Text(state.name, style: black18Reg),
                        trailing: Text(state.infected, style: black16Reg),
                      ),
                    );
                  }),
            ),
          ),
          // Center(
          //   child: Container(
          //     width: 200,
          //     height: 70,
          //     color: Colors.amber,
          //     child: InkWell(
          //         child: Text("Back"),
          //         onTap: () {
          //           Navigator.of(context).pop();
          //         }),
          //   ),
          // ),
        ],
      )),
    );
  }
}
