import 'package:UAdmit/details.dart';
import 'package:flutter/material.dart';
import 'models/school.dart';
import './helpers/school_helper.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }
}

AppBar _buildAppBar() => AppBar(
      title: Text("Schools"),
    );

Container _buildBody(BuildContext context) => Container(
      child: _buildFutureBody(context),
    );

FutureBuilder _buildFutureBody(BuildContext context) =>
    FutureBuilder<List<school>>(
        future: SchoolHelper.read(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Text(snapshot.error.toString());
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildDisplay(snapshot.data, context);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });

Widget _buildDisplay(List<school>? items, BuildContext context) {
  if (items == null) return Icon(Icons.error);

  return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildItem(items[index], context);
      });
}

Widget _buildItem(school item, BuildContext context) => InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Detail(s: item)));
      },
      child: Card(
        child: ListTile(
          leading: Text("${item.id}"),
          title: Text(
            "${item.name}",
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "Learn more...",
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
