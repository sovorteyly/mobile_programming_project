import 'package:flutter/material.dart';

class NoneStateTwoApp extends StatefulWidget {
  const NoneStateTwoApp({Key? key}) : super(key: key);

  @override
  State<NoneStateTwoApp> createState() => _NoneStateTwoAppState();
}

class _NoneStateTwoAppState extends State<NoneStateTwoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.purple,
      );
  Widget _buildBody() => Container(
        child: Column(
          children: [
            _buildButtons(),
            _buildText(),
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
