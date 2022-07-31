import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './logic/counter_logic.dart';

class StateTwoApp extends StatefulWidget {
  const StateTwoApp({Key? key}) : super(key: key);

  @override
  State<StateTwoApp> createState() => _StateTwoAppState();
}

class _StateTwoAppState extends State<StateTwoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: Text("None State App"),
        backgroundColor: Colors.purple,
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
              context.read<CounterLogic>().decrease();
            },
            icon: Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
            },
            icon: Icon(Icons.add),
          ),
        ],
      );
  Widget _buildText() {
    int counter = context.watch<CounterLogic>().counter;

    return Text(
      "Counter: ${counter}",
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }
}
