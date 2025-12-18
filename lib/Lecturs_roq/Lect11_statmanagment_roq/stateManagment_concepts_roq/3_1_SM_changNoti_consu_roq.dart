import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class With_SM_ChangNoti_Consum_Roq extends StatelessWidget {
    const With_SM_ChangNoti_Consum_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context)=> Provider_Roq(),
    child:  Scaffold(appBar: AppBar(title: Text("SM Consumer Concept"),),
      body: Consumer<Provider_Roq>(builder: (context,modle_roq,child){

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Welcome : ${modle_roq.name}")),
            SizedBox(height: 10,),
            MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Do Something"),
                onPressed: (){
modle_roq.changText_Funroq();
                  print("Name is after change :${modle_roq.name}");
                })
          ],
        );},)



    ),

    );


  }
}

class Provider_Roq extends ChangeNotifier
{
  String name="empty";
  int count=10;
  changText_Funroq()
  {
    name="Ruqaih Salman";
    notifyListeners();
  }
}
