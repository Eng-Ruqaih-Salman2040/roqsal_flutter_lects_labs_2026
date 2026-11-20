import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class LayoutBuilder_Roq extends StatefulWidget {
  const LayoutBuilder_Roq({Key? key}) : super(key: key);

  @override
  State<LayoutBuilder_Roq> createState() => _LayoutBuilder_RoqState();
}

class _LayoutBuilder_RoqState extends State<LayoutBuilder_Roq> {
  final List<Student> _student = [
    Student('st001', 'John Steve Geo', 'Loc 01 Shefeild'),
    Student('st002', 'Alice Job', 'Loc 02 Turin'),
    Student('st003', 'Christy Frederic', 'Loc 03 STDF'),

  ];
  bool _showList=false;
  @override
  Widget build(BuildContext context) {

    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    if(! isLandscape )
    {
      _showList=true;
    }

    final studentImg=Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image.asset(
        'assets_roq/assets_labs_roq/images/avatar.png',
      ),
    );

    final studentDetails=Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        color: Colors.grey,
      ),
      padding:const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.15,

      child: StudentDetails(_student),
    );


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Student Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            if(isLandscape)

              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 200,height: 200, child: studentImg,),

                    SizedBox(width: 6,),

                    SizedBox(width: 200,height: 200, child: studentDetails,),
                  ],
                ),
              ),


            if(! isLandscape)
              studentImg,
            if(! isLandscape)
              studentDetails,







            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Student List',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      if(isLandscape)
                        Switch.adaptive(value: _showList, onChanged: (val){
                          setState(() {
                            _showList=val;
                          });
                        }),
                    ],
                  ),


                  if(_showList)
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView(
                          children: _student.map((stlist) {
                            return Card(
                              elevation: 5,
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets_roq/assets_labs_roq/images/avatar.png'),
                                  ),
                                ),
                                title: Text(
                                  stlist.stName,
                                ),
                                trailing: IconButton(
                                  icon: Icon(Platform.isIOS? CupertinoIcons.delete : Icons.delete),
                                  onPressed: () {},
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),

                ],

              ),
            )  ,





          ],
        ),
      ),
    );
  }
}


class StudentDetails extends StatelessWidget {

  List<Student> _student;

  StudentDetails(this._student);




  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (ctx,constraints){

      return Column(

        children: [

          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),


          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),


          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stId,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),


          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),

          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stAddress,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      );

    });


  }
}
class Student{
  String stId;
  String stName;
  String stAddress;

  Student(this.stId,this.stName,this.stAddress);

}