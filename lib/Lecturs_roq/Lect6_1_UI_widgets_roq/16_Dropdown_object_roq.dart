import 'package:flutter/material.dart';

class BankListDataModel {
  String bank_name;
  String bank_logo;
  BankListDataModel(this.bank_name, this.bank_logo);
}

class DropdownButton_Object_Roq extends StatefulWidget {

  @override
  _DropdownButton_Object_RoqState createState() => _DropdownButton_Object_RoqState();

  const DropdownButton_Object_Roq();
}

class _DropdownButton_Object_RoqState extends State<DropdownButton_Object_Roq> {
  BankListDataModel? _bankChoose;
  List<BankListDataModel> bankDataList = [
    BankListDataModel("SBI",
        //"https://www.kindpng.com/picc/m/83-837808_sbi-logo-state-bank-of-india-group-png.png"
    'assets_roq/assets_lect_roq/images_roq/bank_1.png'
    ),
    BankListDataModel("HDFC",
       // "https://www.pngix.com/pngfile/big/12-123534_download-hdfc-bank-hd-png-download.png"
        'assets_roq/assets_lect_roq/images_roq/bank_2.png'
            ),
    BankListDataModel("ICICI",
       // "https://www.searchpng.com/wp-content/uploads/2019/01/ICICI-Bank-PNG-Icon-715x715.png"
    'assets_roq/assets_lect_roq/images_roq/bank_3.png'
    ),
    BankListDataModel("IGfs",
        // "https://www.searchpng.com/wp-content/uploads/2019/01/ICICI-Bank-PNG-Icon-715x715.png"
        'assets_roq/assets_lect_roq/images_roq/bank_4.png'
    ),
  ];

  @override
  void initState() {
    super.initState();
    _bankChoose = bankDataList[0];
  }

  void _onDropDownItemSelected(BankListDataModel newSelectedBank) {
    setState(() {
      _bankChoose = newSelectedBank;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                child: FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(12, 10, 20, 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<BankListDataModel>(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: "verdana_regular",
                          ),
                          hint: Text(
                            "Plz Select Bank",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: "verdana_regular",
                            ),
                          ),
                          items: bankDataList
                              .map((BankListDataModel value_roq) {
                                return DropdownMenuItem(
                                  value: value_roq,
                                  child: Row(
                                    children: [
                                      new CircleAvatar(
                                        backgroundImage:
                                           AssetImage(value_roq.bank_logo),
                                        //NetworkImage(value_roq.bank_logo),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(value_roq.bank_name),
                                    ],
                                  ),
                                );
                              }).toList(),
                          isExpanded: true,
                          isDense: true,
                          onChanged: (BankListDataModel? newSelectedBank) {
                            _onDropDownItemSelected(newSelectedBank!);
                          },
                          value: _bankChoose,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}