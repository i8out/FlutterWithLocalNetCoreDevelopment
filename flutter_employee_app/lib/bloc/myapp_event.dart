abstract class MyAppEvent {}

class GetEmployees extends MyAppEvent {
  @override
  String toString() => 'GetEmployees';
}