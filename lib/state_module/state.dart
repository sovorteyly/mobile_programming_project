import 'package:UAdmit/state_module/state2nd.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './logic/counter_logic.dart';

class StateApp extends StatefulWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: Text("None State App"),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StateTwoApp(),
                    ),
                  ),
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
