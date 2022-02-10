import 'dart:convert';

import 'package:http/http.dart' as http;

class GetApiData {
  Future<List<dynamic>> getData() async {
    final productUrl = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(productUrl);
    print(response.body);
    return json.decode(response.body);
  }
}

// // import 'dart:convert';

// // import 'package:http/http.dart' as http;

// // class ApiHelper {
// //   static String baseUrl = "https://randomuser.me/api/?results=20";

// //   static Future<List<dynamic>> getUserList(String endPoint) async {
// //     var response = await http.get(Uri.parse(baseUrl + endPoint));
// //     print(response.body);
// //     return jsonDecode(response.body)['results'];
// //   }
// // }

// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class GetApiData {
//   Future getData() async {
//     final productUrl = Uri.parse('https://randomuser.me/api/?results=10');
//     final response = await http.get(productUrl);
//     print(response.body);
//     return json.decode(response.body);
//   }

//   Future getSingleData(int id) async {
//     final productUrl = Uri.parse('https://randomuser.me/api/?results=1');
//     final response = await http.get(productUrl);
//     // print(response.statusCode);
//     // print(response.body);

//     return json.decode(response.body);
//   }
// }
