import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_bottom_sheet.dart';

class HomeViewBottomsheet extends StatelessWidget {
  // Observable variable to store the result returned from the bottom sheet
  final selectedResult = 'No selection made yet'.obs;

  HomeViewBottomsheet({super.key});

  // Method to show the custom bottom sheet
  void showCustomBottomSheet() async {
    // 1. Call Get.bottomSheet with the custom widget
    // 2. The `await` keyword pauses execution until the sheet is closed
    // 3. The result is the value passed to Get.back() inside the controller
    final result = await Get.bottomSheet(
      CustomBottomSheet(),
      // Advanced customization options:
      isScrollControlled: true, // Allows the sheet to take up more screen space
      isDismissible: true, // Can be dismissed by tapping outside
      enableDrag: true, // Can be dismissed by dragging down
      // Custom background color with transparency for a subtle effect
      backgroundColor: Colors.white.withOpacity(0.95),
      // Custom shape for the sheet
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );

    // Check if a result was returned (i.e., the user didn't just dismiss it)
    if (result != null) {
      selectedResult.value = 'Selected Option: $result';
    } else {
      selectedResult.value = 'Selection cancelled (Dismissed)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Advanced BottomSheet'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Advanced BottomSheet Example:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Display the result returned from the bottom sheet
              Obx(
                () => Text(
                  selectedResult.value,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: selectedResult.value.contains('Selected') ? Colors.green : Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: showCustomBottomSheet,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Open Advanced BottomSheet',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'This example demonstrates:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('1. Using a dedicated GetX Controller for internal state.'),
              const Text('2. Passing data back to the calling screen using `Get.back(result: ...)` and `await`.'),
              const Text('3. Advanced visual customization (shape, color, scroll control).'),
            ],
          ),
        ),
      ),
    );
  }
}
