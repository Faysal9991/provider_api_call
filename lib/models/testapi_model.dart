// To parse this JSON data, do
//
//     final apiTestPro = apiTestProFromJson(jsonString);

import 'dart:convert';

List<ApiTestmodel> apiTestProFromJson(String str) => List<ApiTestmodel>.from(json.decode(str).map((x) => ApiTestmodel.fromJson(x)));

String apiTestProToJson(List<ApiTestmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiTestmodel {
  ApiTestmodel({
  required  this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ApiTestmodel.fromJson(Map<String, dynamic> json) => ApiTestmodel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
