import 'package:flutter/material.dart';

class StepperHome extends StatefulWidget {
  @override
  _StepperHomeState createState() => _StepperHomeState();
}

class _StepperHomeState extends State<StepperHome> {
  var currentstep = 0;
  bool complete = false;
  List<Step> steps = [
    Step(
        title: Text('Step 1'), content: Text('Step 1 content'), isActive: true),
    Step(
        title: Text('Step 2'), content: Text('Step 2 content'), isActive: true),
    Step(
        title: Text('Step 3'), content: Text('Step 3 content'), isActive: true),
  ];
  @override
  Widget build(BuildContext context) {
    return complete ? Container(
      child: Center(
        child: Text('Completed'),
      ),
    ): Stepper(
      steps: steps,
      currentStep: currentstep,
      onStepContinue: next,
      onStepCancel: cancel,
      onStepTapped: (taped) => goTo(taped),
    );
  }

  next() {
    currentstep + 1 != steps.length
        ? goTo(currentstep + 1)
        : setState(() => complete = true);
  }
  goTo(int step){
    setState(() {
      currentstep = step;
    });
  }
  cancel(){
    if(currentstep>0){
      goTo(currentstep - 1);
    }
  }
}
