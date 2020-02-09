import 'package:flutter/material.dart';
import 'package:stepper_widget/stepper.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepper App',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stepper App'),
        ),
        body: StepperHome(),
      ),
    );
  }
}
