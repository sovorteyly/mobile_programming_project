import 'package:flutter/material.dart';
import 'models/school.dart';

class Detail extends StatefulWidget {
  final school s;
  const Detail({Key? key, required this.s}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.s.name}"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                       "${widget.s.img}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "${widget.s.about}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bachelors",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 100, 255, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i in widget.s.m[0].Bachelor.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Master",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 100, 0, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i in widget.s.m[0].Master.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Text(
              "PhD",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 0, 100, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i in widget.s.m[0].PhD.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Text(
              "Research Units",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(100, 0, 255, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i in widget.s.m[0].Research_Units.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Text(
              "International College",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 100, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i
                        in widget.s.m[0].International_College.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Text(
              "Associate Degree",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(50, 50, 100, .7),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    for (var i
                        in widget.s.m[0].Associate.split(", "))
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 2),
                        child: Text(
                          i.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
