import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteremployeeapp/repository/employee_api.dart';

import 'bloc.dart';

class MyAppBLoC extends Bloc<MyAppEvent, MyAppState> {
  MyAppBLoC();

  @override
  MyAppState get initialState => PageLoading();

  @override
  Stream<MyAppState> mapEventToState(MyAppEvent event) async* {
    if (event is GetEmployees) {
      yield PageLoading();
      try {
        final _employees = await getEmployees();
        yield DisplayPage(employees: _employees);
      } catch (e) {
        yield LoadError();
      }
    }
  }
}
