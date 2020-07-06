import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'models/employee.dart';
import 'widgets/employee_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  MyAppBLoC _bloc;
  List<Employee> _employees;

  @override
  void initState() {
    this._bloc = MyAppBLoC();
    this._bloc.add(GetEmployees());
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _bloc.close();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyAppBLoC, MyAppState>(
      bloc: this._bloc,
      listener: (context, state) {
        _employees = state.employees;
      },
      child: BlocBuilder<MyAppBLoC, MyAppState>(
          bloc: this._bloc,
          builder: (context, state) {
            if (state is PageLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoadError) {
              return MaterialApp(
                title: 'Employee App',
                home: Scaffold(
                  appBar: AppBar(
                    title: Text('Employee List'),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'An error occured. Please contact Helpdesk.',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return MaterialApp(
                title: 'Employee App',
                home: Scaffold(
                  appBar: AppBar(
                    title: Text('Employee List'),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: _employees.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                              height: 50,
                              width: 50,
                              child: EmployeeAvatar(_employees[index].photo)),
                          title: Text(
                            _employees[index].lastName +
                                ', ' +
                                _employees[index].firstName,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
