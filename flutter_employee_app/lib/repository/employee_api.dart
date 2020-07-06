import 'dart:convert';

import 'package:flutteremployeeapp/models/employee.dart';

import 'api.dart';

Future<List<Employee>> getEmployees() async {
  final _url = 'http://10.0.2.2:60760/api/employees/getemployees';
  final _result = await getApi(_url);
  final _employeeList = (jsonDecode(_result) as List)
      .map<Employee>((j) => Employee.fromJson(j))
      .toList();
  return _employeeList;
}
