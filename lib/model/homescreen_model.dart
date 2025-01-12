// // To parse this JSON data, do
// //
// //     final homescreenmodel = homescreenmodelFromJson(jsonString);

// import 'dart:convert';

// Homescreenmodel homescreenmodelFromJson(String str) =>
//     Homescreenmodel.fromJson(json.decode(str));

// String homescreenmodelToJson(Homescreenmodel data) =>
//     json.encode(data.toJson());

// class Homescreenmodel {
//   String? id;
//   String? name;
//   Data? data;

//   Homescreenmodel({
//     this.id,
//     this.name,
//     this.data,
//   });

//   factory Homescreenmodel.fromJson(Map<String, dynamic> json) =>
//       Homescreenmodel(
//         id: json["id"],
//         name: json["name"],
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "data": data?.toJson(),
//       };
// }

// class Data {
//   String? color;
//   String? capacity;

//   Data({
//     this.color,
//     this.capacity,
//   });

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         color: json["color"],
//         capacity: json["capacity"],
//       );

//   Map<String, dynamic> toJson() => {
//         "color": color,
//         "capacity": capacity,
//       };
// }
import 'dart:convert';

List<Homescreenmodel> homescreenmodelFromJson(String str) =>
    List<Homescreenmodel>.from(
        json.decode(str).map((x) => Homescreenmodel.fromJson(x)));

String homescreenmodelToJson(List<Homescreenmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Homescreenmodel {
  String? id;
  String? name;
  Data? data;

  Homescreenmodel({
    this.id,
    this.name,
    this.data,
  });

  factory Homescreenmodel.fromJson(Map<String, dynamic> json) =>
      Homescreenmodel(
        id: json["id"],
        name: json["name"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "data": data?.toJson(),
      };
}

class Data {
  String? color;
  String? capacity;

  Data({
    this.color,
    this.capacity,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        color: json["color"],
        capacity: json["capacity"],
      );

  Map<String, dynamic> toJson() => {
        "color": color,
        "capacity": capacity,
      };
}
