import 'package:flutter/material.dart';
import 'none_state_2.dart';

class NoneStateApp extends StatefulWidget {
  const NoneStateApp({Key? key}) : super(key: key);

  @override
  State<NoneStateApp> createState() => _NoneStateAppState();
}

class _NoneStateAppState extends State<NoneStateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  int _counter = 0;

  AppBar _buildAppBar(BuildContext context) => AppBar(
        title: Text("None State App"),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NoneStateTwoApp())),
              icon: Icon(Icons.settings))
        ],
      );

  Widget _buildBody() => Container(
        child: Column(
          children: [
            Expanded(
              child: _buildButtons(),
            ),
            Expanded(
              child: _buildText(),
            ),
          ],
        ),
      );

  Widget _buildButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _counter -= 1;
              });
            },
            icon: Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _counter += 1;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      );
  Widget _buildText() => Text(
        "Counter: ${_counter}",
        style: TextStyle(
          fontSize: 30,
        ),
      );
}
