import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  // Observable variable to hold the selected option inside the bottom sheet
  final selectedOption = 'Option A'.obs;

  // List of available options
  final List<String> options = ['Option A', 'Option B', 'Option C', 'Option D'];

  // Method to update the selected option
  void selectOption(String option) {
    selectedOption.value = option;
  }

  // Method to close the bottom sheet and return the selected value
  void confirmAndClose() {
    // Get.back() is the standard way to close a route (like a dialog or bottom sheet)
    // and it can optionally pass a result back to the caller.
    Get.back(result: selectedOption.value);
  }
}
