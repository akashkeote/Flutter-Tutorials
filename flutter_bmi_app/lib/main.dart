import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var input1 = TextEditingController();
  var input2 = TextEditingController();
  var input3 = TextEditingController();

  Color? bgcolor;
  String? msg;
  String? res;
  double? bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI Calculator',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter Your Weight (kg)"),
                  prefixIcon: Icon(Icons.line_weight_outlined),
                ),
                controller: input1,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter Your Height in Feet"),
                  prefixIcon: Icon(Icons.height_outlined),
                ),
                controller: input2,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  label: Text("Enter Your Height in Inches"),
                  prefixIcon: Icon(Icons.height_rounded),
                ),
                controller: input3,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 11),
              ElevatedButton(
                onPressed: () {
                  var wt = input1.text.toString();
                  var hFT = input2.text.toString();
                  var hIn = input3.text.toString();
                  
                  if (wt != "" && hFT != "" && hIn != "") {
                    try {
                      // Parse inputs
                      var iWt = double.parse(wt);
                      var ihFT = double.parse(hFT);
                      var ihIn = double.parse(hIn);
                      
                      // Convert height to meters
                      var totalInches = (ihFT * 12) + ihIn;
                      var heightInMeters = totalInches * 0.0254;
                      
                      // Calculate BMI
                      var bmi = iWt / (heightInMeters * heightInMeters);
                      
                      // Determine BMI category
                      setState(() {
                        bmiValue = bmi;
                        if (bmi > 24.9) {
                          msg = "Overweight";
                          bgcolor = Colors.orange.shade200;
                        } else if (bmi < 18.5) {
                          msg = "Underweight";
                          bgcolor = Colors.red.shade200;
                        } else {
                          bgcolor = Colors.green.shade200;
                          msg = "Healthy";
                        }
                        res = null; // Clear any error message
                      });
                    } catch (e) {
                      setState(() {
                        res = "Please enter valid numbers";
                        bgcolor = null;
                        msg = null;
                        bmiValue = null;
                      });
                    }
                  } else {
                    setState(() {
                      res = "Please enter all parameters";
                      bgcolor = null;
                      msg = null;
                      bmiValue = null;
                    });
                  }
                },
                child: Text("Check BMI"),
              ),
              SizedBox(height: 20),
              // Display results
              if (msg != null && bmiValue != null)
                Column(
                  children: [
                    Text(
                      "BMI: ${bmiValue!.toStringAsFixed(1)}",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Status: $msg",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              if (res != null)
                Text(
                  res!,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
