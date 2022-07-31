import 'package:flutter/foundation.dart';

import '../models/school.dart';
import 'package:http/http.dart' as http;

class SchoolHelper {
  static Future<List<school>> read() async {
    String url = "https://uadmit-cadt.herokuapp.com/api/school";
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return compute(getSchoolList, response.body);
      } else {
        throw Exception("Error: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: ${e.toString()}");
    }
  }
}
