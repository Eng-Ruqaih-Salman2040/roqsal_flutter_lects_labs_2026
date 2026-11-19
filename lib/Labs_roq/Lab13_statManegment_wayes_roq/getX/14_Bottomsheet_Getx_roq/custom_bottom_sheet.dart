import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bottom_sheet_controller.dart';

class CustomBottomSheet extends StatelessWidget {
  // Inject the controller for the bottom sheet's logic
  final BottomSheetController controller = Get.put(BottomSheetController());

  CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF1E88E5); // Consistent primary color

    return Container(
      // The background color is set in Get.bottomSheet, but we use a padding
      // and a column for the content.
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drag Handle (for a professional touch)
          Center(
            child: Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Title and Subtitle
          const Text(
            'Configure Selection',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 5),
          const Text(
            'Choose one of the options below to return to the main screen.',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const Divider(height: 30),

          // Options List (using Obx for reactive updates)
          Obx(
            () => Column(
              children: controller.options.map((option) {
                final isSelected = controller.selectedOption.value == option;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: InkWell(
                    onTap: () => controller.selectOption(option),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        color: isSelected ? primaryColor.withOpacity(0.1) : Colors.grey[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected ? primaryColor : Colors.grey[200]!,
                          width: isSelected ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                            color: isSelected ? primaryColor : Colors.grey,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            option,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),

          // Action Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.confirmAndClose,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              child: const Text(
                'Confirm Selection',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
