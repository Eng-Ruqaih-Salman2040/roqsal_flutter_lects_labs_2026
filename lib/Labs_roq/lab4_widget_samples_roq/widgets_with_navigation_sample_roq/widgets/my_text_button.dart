import 'package:flutter/material.dart';
import '../constants.dart';

class TextButton_UI_Roq extends StatelessWidget {
  const TextButton_UI_Roq({
    Key? key,
    required this.buttonName_roq,
    required this.onPressed_roq,
    required this.bgColor_roq,
    required this.textColor_roq,
  }) : super(key: key);
  final String buttonName_roq;
  //////////////////////////////////////////
  //final Function onPressed_roq;  //Error in new versin with null safty
  //final void Function()? onPressed; // True ----> Good
  final VoidCallback? onPressed_roq;//True ----> Good
  //////////////////////////////////////////////////
  final Color bgColor_roq;
  final Color textColor_roq;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  bgColor_roq,//Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.black12,
            ),
          ),
          onPressed: onPressed_roq,
          child: Text(
            buttonName_roq,
            style: TextStyle(
              color: textColor_roq,//Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.bold,

              //kButtonText.copyWith(color: Colors.white),
            ),
          ),
        ));
  }
}
