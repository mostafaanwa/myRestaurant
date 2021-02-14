import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepperDemo ();
  }

}
class _StepperDemo extends State <StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top : 30.0,),
          child: Stepper(
            steps: _myStep(),
            currentStep: _currentStep,
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
            onStepContinue: () {
              setState(() {
                if (_currentStep < _myStep().length - 1) {
                  _currentStep ++;
                } else {
                  print("Steps are completed, Check fields then gp on");
                }
              });
            },
            onStepCancel: (){
              setState(() {
                if (_currentStep > 0){
                  _currentStep -- ;
                } else {
                  _currentStep = 0;
                }
              });
            },
          ),
        )
    );
  }

  List<Step> _myStep() {
    List <Step>_steps = [
      Step(title: Text("Username",),
          subtitle: Text("Required"),

          content: TextField(),
          isActive: _currentStep > 0),
      Step(title: Text("Password"),
          subtitle: Text("Required"),
          content: TextField(),
          isActive: _currentStep > 1),
      Step(title: Text("Email"),
          subtitle: Text("Optional"),
          content: TextField(),
          isActive: _currentStep > 2),
    ];
    return _steps;
  }
}
