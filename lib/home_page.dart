import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_provider/height_provider.dart';
import 'package:multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heighttProvider = Provider.of<HeighttProvider>(context);

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
            // Menggunakan Conumer
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //     value: weightProvider.weight,
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: weightProvider.weight.round().toString(),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print("weight:  $newValue");
            //       weightProvider.weight = newValue;
            //     },
            //   ),
            // ),
            // NOTE MENGGUNAKAN PROVIDER OF CONTEXT
            Slider(
              value: weightProvider.weight,
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print("weight:  $newValue");
                weightProvider.weight = newValue;
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Your Height (cm )",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // Consumer<HeighttProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     value: heightProvider.height,
            //     min: 1,
            //     divisions: 200,
            //     label: heightProvider.height.round().toString(),
            //     max: 200,
            //     activeColor: Colors.amber,
            //     inactiveColor: Colors.amber.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print("height:  $newValue");
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            Slider(
              value: heighttProvider.height,
              min: 1,
              divisions: 200,
              label: heighttProvider.height.round().toString(),
              max: 200,
              activeColor: Colors.amber,
              inactiveColor: Colors.amber.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print("height:  $newValue");
                heighttProvider.height = newValue;
              },
            ),
            const SizedBox(
              height: 50,
            ),
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) =>
            //       Consumer<HeighttProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       "Your BMI :\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}",
            //       style: const TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
            Text(
              "Your BMI :\n${(weightProvider.weight / (pow(heighttProvider.height / 100, 2))).toStringAsFixed(2)}",
              style: const TextStyle(
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
