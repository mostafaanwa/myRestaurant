import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  int _currentStep = 0;
  var firstValue ="Cash";

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        backgroundColor: Colors.blueGrey,
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

                                    //
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
            style: TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            child: TextField(keyboardType: TextInputType.name,maxLength: 25,
              style: TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration(hintText: "Enter Your Name",
                  fillColor: Colors.white,
                  filled: true,
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
            style: TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            child: TextField(keyboardType: TextInputType.phone,
              maxLength: 11,
              style: TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration(hintText: "Mobile or Land Line",
                  fillColor: Colors.white,
                  filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 1),

      Step(
          title: Text("Detailed address",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic)),
          subtitle: Text(
              "Required",
          style: TextStyle(color: Colors.white),),
          content: SizedBox(
            child: TextField(keyboardType: TextInputType.streetAddress,
              style: TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration(hintText: "Home Address",
                  fillColor: Colors.white,
                  filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 2),

      Step(
          title: Text("Email",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic)),
          subtitle: Text("Optional",
    style: TextStyle(color: Colors.white),),
          content: SizedBox(
            child: TextField(keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration(hintText: "Email Address",
                  fillColor: Colors.white,
                  filled: true,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            width: 200,
          ),
          isActive: _currentStep > 3),

      Step(
          title: Text("Payment method",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic)),
          subtitle: Text("Required",
    style: TextStyle(color: Colors.white),),
          content: SizedBox(
            child: CheckboxGroup(labels: ["Cash","Credit","Cash Mobile"]),
            width: 200,
          ),
          isActive: _currentStep > 4),
    ];
    return _steps;
  }
}
