// To parse this JSON data, do
//
//     final productscreenmodel = productscreenmodelFromJson(jsonString);

import 'dart:convert';

Productscreenmodel productscreenmodelFromJson(String str) =>
    Productscreenmodel.fromJson(json.decode(str));

String productscreenmodelToJson(Productscreenmodel data) =>
    json.encode(data.toJson());

class Productscreenmodel {
  String? id;
  String? name;
  Data? data;

  Productscreenmodel({
    this.id,
    this.name,
    this.data,
  });

  factory Productscreenmodel.fromJson(Map<String, dynamic> json) =>
      Productscreenmodel(
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
  int? year;
  double? price;
  String? cpuModel;
  String? hardDiskSize;

  Data({
    this.year,
    this.price,
    this.cpuModel,
    this.hardDiskSize,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        year: json["year"],
        price: json["price"]?.toDouble(),
        cpuModel: json["CPU model"],
        hardDiskSize: json["Hard disk size"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "price": price,
        "CPU model": cpuModel,
        "Hard disk size": hardDiskSize,
      };
}
