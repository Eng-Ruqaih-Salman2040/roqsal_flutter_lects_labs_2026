import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainBottomsheetGetx_Roq());
}

class MainBottomsheetGetx_Roq extends StatelessWidget {
  const MainBottomsheetGetx_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomsheetGetx_Ex1_Roq(),
    );
  }
}

class BottomsheetGetx_Ex1_Roq extends StatefulWidget {
  const BottomsheetGetx_Ex1_Roq({Key? key}) : super(key: key);

  @override
  State<BottomsheetGetx_Ex1_Roq> createState() => _BottomsheetGetx_Ex1_RoqState();
}

class _BottomsheetGetx_Ex1_RoqState extends State<BottomsheetGetx_Ex1_Roq> {
  String _date = "Select Date";
  String _time = "Select Time";
  int _counter = 0;

  // قائمة الخدمات
  final List<Map<String, dynamic>> services = [
    {
      "id": 1,
      "title": "خدمة التنظيف المنزلي",
      "description": "تنظيف شامل للمنزل",
      "price": 100.0
    },
    {
      "id": 2,
      "title": "خدمة الصيانة الكهربائية",
      "description": "إصلاح الأعطال الكهربائية",
      "price": 150.0
    },
    {
      "id": 3,
      "title": "خدمة السباكة",
      "description": "إصلاح تسريبات المياه",
      "price": 120.0
    },
    {
      "id": 4,
      "title": "خدمة النقل",
      "description": "نقل الأثاث والمتعلقات",
      "price": 200.0
    },
  ];

  // دالة لفتح DatePicker المدمج في Flutter
  Future<void> _selectDate(BuildContext context, StateSetter setState) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025, 12, 31),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _date = '${picked.year} - ${picked.month} - ${picked.day}';
      });
    }
  }

  // دالة لفتح TimePicker المدمج في Flutter
  Future<void> _selectTime(BuildContext context, StateSetter setState) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _time = '${picked.hour} : ${picked.minute}';
      });
    }
  }

  /////////////////////////////// Bottomsheet Example1 /////////////
  void openBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Bottom Sheet Example 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'هذا مثال للبوتوم شيت الأول',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                Get.back();
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.orange),
              ),
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      isDismissible: true,
      enableDrag: true,
    );
  }
  //////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BottomSheet Examples",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: const Color(0xFFF5F5F5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bottom Sheet Examples with GetX',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 30),

              // Button for Example 1
              Container(
                margin: const EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: openBottomSheet,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue, width: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  child: const Text(
                    'Open Bottomsheet Ex1',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Button for Example 2
              Container(
                margin: const EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        color: Colors.greenAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Example 2',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            const Text('Hi 1', style: TextStyle(fontSize: 16)),
                            const Text('Hi 2', style: TextStyle(fontSize: 16)),
                            const Text('Hi 3', style: TextStyle(fontSize: 16)),
                            const Text('Hi 4', style: TextStyle(fontSize: 16)),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () => Get.back(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                              ),
                              child: const Text(
                                'Close',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      barrierColor: Colors.red.withOpacity(0.2),
                      isDismissible: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      enableDrag: false,
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue, width: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  child: const Text(
                    'Open Bottomsheet Ex2',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Button for Example 3
              Container(
                margin: const EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: () {
                    // اختيار خدمة عشوائية للمثال
                    int randomIndex = DateTime.now().millisecondsSinceEpoch % services.length;

                    Get.bottomSheet(
                      StatefulBuilder(
                        builder: (context, setState) {
                          return Container(
                            height: 450,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Header
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        services[randomIndex]["title"] ?? "Service",
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () => Get.back(),
                                      icon: const Icon(Icons.close, size: 20),
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),

                                // Date Picker
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ElevatedButton(
                                      onPressed: () => _selectDate(context, setState),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          side: const BorderSide(color: Colors.orange),
                                        ),
                                        minimumSize: const Size(double.infinity, 50),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.date_range_outlined,
                                                size: 20,
                                                color: Colors.orange,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                _date,
                                                style: const TextStyle(color: Colors.orange),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            "Change",
                                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),

                                    // Time Picker
                                    ElevatedButton(
                                      onPressed: () => _selectTime(context, setState),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          side: const BorderSide(color: Colors.orange),
                                        ),
                                        minimumSize: const Size(double.infinity, 50),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.access_time,
                                                size: 20,
                                                color: Colors.orange,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                _time,
                                                style: const TextStyle(color: Colors.orange),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Change",
                                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),

                                // Counter Section
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Quantity",
                                        style: TextStyle(fontSize: 16, color: Colors.black),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if (_counter > 0) {
                                                      setState(() {
                                                        _counter--;
                                                      });
                                                    }
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.blue,
                                                    shape: const CircleBorder(),
                                                    padding: const EdgeInsets.all(10),
                                                  ),
                                                  child: const Icon(Icons.remove_outlined, color: Colors.white, size: 20),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  width: 50,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    _counter.toString(),
                                                    style: const TextStyle(fontSize: 30, color: Colors.orange, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _counter++;
                                                    });
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.blue,
                                                    shape: const CircleBorder(),
                                                    padding: const EdgeInsets.all(10),
                                                  ),
                                                  child: const Icon(Icons.add_outlined, color: Colors.white, size: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Get.snackbar(
                                                'Booking Confirmed',
                                                'Booked ${services[randomIndex]["title"]} on $_date at $_time\nQuantity: $_counter',
                                                snackPosition: SnackPosition.BOTTOM,
                                                backgroundColor: Colors.green,
                                                colorText: Colors.white,
                                                duration: const Duration(seconds: 3),
                                                margin: const EdgeInsets.all(10),
                                              );
                                              Get.back();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange,
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 20,
                                                vertical: 15,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: const Row(
                                              children: [
                                                Icon(Icons.check, color: Colors.white, size: 20),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Book Now",
                                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // Service Info
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF5F5F5).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Service Details",
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        services[randomIndex]["description"] ?? "",
                                        style: const TextStyle(fontSize: 14, color: Colors.black),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "Price: \$${services[randomIndex]["price"] ?? 0.0}",
                                        style: const TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      isDismissible: true,
                      enableDrag: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue, width: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  child: const Text(
                    'Open Bottomsheet Ex3',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}