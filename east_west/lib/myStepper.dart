import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStepper();
  }
}

class _MyStepper extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
          ),
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
                  _currentStep++;
                } else {
                  print("Steps are completed, Check fields then gp on");
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0) {
                  _currentStep--;
                } else {
                  _currentStep = 0;
                }
              });
            },
          ),
        ));
  }

  List<Step> _myStep() {
    List<Step> _steps = [
      Step(
          title: Text(
            "Username",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic),
          ),
          subtitle: Text(
            "Required",
          ),
          content: SizedBox(
            child: TextField(
              style: TextStyle(color: Colors.black,fontSize: 20),
              decoration: InputDecoration(fillColor: Colors.white,filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 0),
      Step(
          title: Text("Phone Number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic,
              )),
          subtitle: Text(
            "Required",
          ),
          content: SizedBox(
            child: TextField(
              style: TextStyle(color: Colors.black,fontSize: 20),
              decoration: InputDecoration(fillColor: Colors.white,filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 1),
      Step(
          title: Text("Email",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic)),
          subtitle: Text("Optional"),
          content: SizedBox(
            child: TextField(
              style: TextStyle(color: Colors.black,fontSize: 20),
              decoration: InputDecoration(fillColor: Colors.white,filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 2),
    ];
    return _steps;
  }
}
