import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:providerapp/models/testapi_model.dart';
class FetchData {
  Future<List<ApiTestmodel>> getData() async {
    List<ApiTestmodel> dataList = [];
    try {
      var request = http.Request(
          'GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));


      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var rawData = await response.stream.bytesToString();

        List<dynamic> data = jsonDecode(rawData);
        data.forEach((element) {
          ApiTestmodel model = ApiTestmodel.fromJson(element);
          dataList.add(model);
        });
        return dataList;
      }
      else {
        print(response.reasonPhrase);
        return [];
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }
}