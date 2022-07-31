import 'package:UAdmit/state_module/logic/counter_logic.dart';
import 'package:UAdmit/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schools.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterLogic()),
      ],
      child: MaterialApp(
        title: "UAdmit",
        theme: ThemeData(
            textTheme: GoogleFonts.blinkerTextTheme(
          Theme.of(context).textTheme,
        )),
        home: School(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
