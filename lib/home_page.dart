import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Weight (kg)",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Slider(
              value: 40,
              min: 1,
              max: 100,
              onChanged: (newValue) {
                print("weight:  $newValue");
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Your Height (cm )",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Slider(
              value: 100,
              min: 1,
              max: 200,
              activeColor: Colors.amber,
              inactiveColor: Colors.amber.withOpacity(0.2),
              onChanged: (newValue) {
                print("height:  $newValue");
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Your BMI :\n20,6",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
