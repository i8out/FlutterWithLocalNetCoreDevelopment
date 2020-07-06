# FlutterWithLocalNetCoreDevelopment

## NetCore Web App
1.	Using Visual Studio 2019, create a new project ASP.NET Core Web Application
2.	Name the project, “EmployeesApp”. Click “Place solution and project in the same directory”, then Create.
3.	I selected “Web Application (Model-View-Controller)” for my project. Unclick under Advanced “Configure for HTTPS” for this case, then Create.
4.	Under Models folder, add “Employee.cs”.
5.	Add new project folder “Data” and add “EmployeesData.cs” and resolve Using issues.
6.	Under Controllers folder, add “API Controller-Empty” and I named it EmployeesController. Resolve Using issues.
7.	Build the solution.
8.	Press F5 and check that the EmployeesApp opens in default browser.
9.	Close the browser and stop Debug mode.
10.	We will need to edit the applicationhost.config file found in the path “.vs/EmployeeApp/config”. Using a text editor, add binding protocol for numerical id of localhost.
![](/Images/applicationhostconfig1.jpg)
11. Note down the port number, we will need this in our Flutter project.
![](/Images/applicationhostconfig2.jpg)

## FlutterEmployeeApp
1.	Using Android Studio, select File, New Flutter Project and select “Flutter Application”. Fill in the Project name and Project location. After clicking Next, press Finish.
2.	Open the pubspec.yaml  file and add after Cupertino_icons the following: http, flutter_bloc, and equatable.
![](/Images/pubspecyaml.jpg)
3.	Since we edited the pubspec.yaml, we need to run “flutter pub get” in the Terminal.
4.	Add three folders under lib namely: bloc, models, repository, and widgets.
5.	Under models folder, add “employee.dart”
6.	Under repository, add “api.dart” and “employee_api.dart”. In the “employee_api.dart”, we need to replace the sample code port number with the actual port number we noted before found in the applicationhost.config file.
7.	Under bloc folder, add the following dart files: “bloc.dart”, “myapp_bloc.dart”, “myapp_event.dart”, and “myapp_state.dart”
8.	Under the widgets folder, add the “employee_avatar.dart”
9.	In Visual Studio, press F5 to run the web project.
10.	Now replace the main.dart and run this Flutter app in the Android emulator.


