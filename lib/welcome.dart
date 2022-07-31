import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to UAdmit"),
      ),
      body: _buildBody(),
    );
  }

  SingleChildScrollView _buildBody() => SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://uadmit-cadt.herokuapp.com/assets/logo.png",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              Text("asdjasdjas"),
            ],
          ),
        ),
      );
}
