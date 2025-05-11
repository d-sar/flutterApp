import 'package:flutter/material.dart';
import 'package:maintenace_app/pages/Machine_Detail.dart';
import 'package:maintenace_app/pages/Manitenace_Management.dart';
import 'package:maintenace_app/pages/Status__Screen.dart';
import 'package:maintenace_app/pages/home.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maintenance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(), 
        '/statusScreen': (context) => StatusScreen(), 
        '/machineDetail': (context) => MachineDetail(),
        '/manitenaceManagement': (context) => ManitenaceManagement(),
      },
    );
  }
}
