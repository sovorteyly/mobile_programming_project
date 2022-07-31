import 'dart:convert';

List<school> getSchoolList(String data) {
  data = data.replaceAll('<pre>', '');
  data = data.replaceAll('</pre>', '');
  List list = json.decode(data);

  return list.map((e) => school.fromMap(e)).toList();
}

class school {
  int id = 0;
  String name = "no name";
  String about = "no about";
  String school_link = "no school_link";
  String img = "https://picsum.photos/";
  List<major> m;

  school({
    this.id = 0,
    this.name = "no name",
    this.about = "no about",
    this.school_link = "no school_link",
    this.img = "https://picsum.photos/",
    required this.m,
  });

  factory school.fromMap(Map<String, dynamic> map) => school(
        id: map['id'],
        name: map['name'],
        about: map['about'],
        school_link: map['img_link'],
        img: map['img'],
        m: List<major>.from(
            json.decode(map['majors']).map((x) => major.fromMap(x))),
      );
}

class major {
  String Associate = "no Associate";
  String Bachelor = "no Bachelor";
  String Master = "no Master";
  String PhD = "no PhD";
  String Research_Units = "no Research_Units";
  String International_College = "no International_College";

  major(
      {this.Associate = "no Associate",
      this.Bachelor = "no Bachelor",
      this.Master = "no Master",
      this.PhD = "no PhD",
      this.Research_Units = "no Research_Units",
      this.International_College = "no International_College"});

  factory major.fromMap(Map<String, dynamic> map) => major(
    Associate: map['Associate Degree'] == null ? "Not Availabe" : map['Associate Degree'],
      Bachelor: map['Bachelor'] == null ? "Not Available" : map['Bachelor'],
      Master: map['Master'] == null ? "Not Available" : map['Master'],
      PhD: map['PhD'] == null ? "Not Available" : map['PhD'],
      Research_Units: map['Research Units'] == null
          ? "Not Available"
          : map['Research Units'],
      International_College: map['International College'] == null
          ? "Not Available"
          : map['International College']);
}
