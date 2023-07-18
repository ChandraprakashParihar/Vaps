import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Employee {
  final String userName;
  final String email;
  final String phoneNumber;
  final String location;
  final String employeeCode;
  Employee({
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.location,
    required this.employeeCode,
  });

  Employee copyWith({
    String? userName,
    String? email,
    String? phoneNumber,
    String? location,
    String? employeeCode,
  }) {
    return Employee(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      location: location ?? this.location,
      employeeCode: employeeCode ?? this.employeeCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'location': location,
      'employeeCode': employeeCode,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      userName: map['userName'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      location: map['location'] as String,
      employeeCode: map['employeeCode'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) =>
      Employee.fromMap(json.decode(source) as Map<String, dynamic>);
}
