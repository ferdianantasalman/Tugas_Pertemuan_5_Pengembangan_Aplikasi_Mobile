// To parse this JSON data, do
//
//     final employees = employeesFromJson(jsonString);

import 'dart:convert';

List<Employees> employeesFromJson(String str) =>
    List<Employees>.from(json.decode(str).map((x) => Employees.fromJson(x)));

String employeesToJson(List<Employees> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employees {
  String id;
  String name;
  String address;
  String salary;

  Employees({
    required this.id,
    required this.name,
    required this.address,
    required this.salary,
  });

  factory Employees.fromJson(Map<String, dynamic> json) => Employees(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        salary: json["salary"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "salary": salary,
      };
}
