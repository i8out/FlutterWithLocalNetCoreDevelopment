import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutteremployeeapp/models/employee.dart';

@immutable
abstract class MyAppState extends Equatable {
  final List<Employee> employees;

  MyAppState({
    this.employees,
  });
}

class PageLoading extends MyAppState {
  final String name;
  PageLoading({this.name});
  @override
  String toString() => 'PageLoading';

  @override
  List<Object> get props => [name];
}

class DisplayPage extends MyAppState {
  final List<Employee> employees;
  DisplayPage({
    this.employees,
  });

  @override
  String toString() => 'DisplayPage';

  @override
  List<Object> get props => [employees];
}

class LoadError extends MyAppState {
  final String name;
  LoadError({this.name});
  @override
  String toString() => 'LoadError';

  @override
  List<Object> get props => [name];
}
