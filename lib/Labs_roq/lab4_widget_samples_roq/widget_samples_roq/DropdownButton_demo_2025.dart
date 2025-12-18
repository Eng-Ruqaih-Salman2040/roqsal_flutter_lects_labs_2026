import 'package:flutter/material.dart';

void main() {
  runApp(DropdownButton_Main_Demo_2025());
}

class DropdownButton_Main_Demo_2025 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: DropdownButton_Home_Demo(title: 'DropdownButton Demo'),
    );
  }

 const DropdownButton_Main_Demo_2025();
}

class DropdownButton_Home_Demo extends StatefulWidget {
  final String title;

  DropdownButton_Home_Demo({this.title = 'Demo'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DropdownButton_Home_Demo> {
  String? selectedRoom;

  var lightSwitchNames = [
    'Living Room',
    'Bedroom',
    'Dining Room',
    'Kitchen',
    'Entrance'
  ];

  var lightScenes = [
    'Standard',
    'Relax',
    'Morning',
    'Daytime',
    'Nightlight',
    'Party'
  ];

  late Map<String, Map<String, LightBulbState>> lightSwitches =
  Map.fromIterable(lightScenes,
      key: (lightScene) => lightScene,
      value: (lightScene) => Map.fromIterable(lightSwitchNames,
          key: (lightSwitchName) => lightSwitchName,
          value: (lightSwitchName) => LightBulbState()));

  var masterSwitchOn = true;

  late String selectedScene = lightScenes.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildMainAppBar(),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20, right: 20.0),
              padding: EdgeInsets.all(12.0),
              height: 70.0,
              color: Colors.white,
              child: DropdownButton<String>(
                value: selectedScene,
                icon: const Icon(Icons.wb_sunny),
                iconSize: 24,
                style: const TextStyle(color: Colors.black87, fontSize: 20.0),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedScene = newValue!;
                    masterSwitchOn = false;
                    lightSwitches[selectedScene]?.forEach((key, value) {
                      if (value.on) {
                        masterSwitchOn = true;
                      }
                    });
                  });
                },
                isExpanded: true,
                items:
                lightScenes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: lightSwitchNames
                    .map((roomName) => GestureDetector(
                    child: LightBulbCard(
                      room: roomName,
                      bulbState: lightSwitches[selectedScene]?[roomName],
                      selected: roomName == selectedRoom,
                    ),
                    onTap: () {
                      setState(() {
                        selectedRoom = roomName;
                      });
                      _showLightControlPanel(context, roomName);
                    }))
                    .toList(),
              ),
            ),
          ],
        ));
  }

  AppBar _buildMainAppBar() {
    return AppBar(
        backgroundColor: Colors.black45,
        title: Text(widget.title),
        leading: GestureDetector(
          child: Center(child: Icon(Icons.undo)),
          onTap: () {
            setState(() {
              lightSwitchNames.forEach((roomName) {
                lightSwitches[selectedScene]?[roomName] = LightBulbState();
              });
              masterSwitchOn = false;
              lightSwitches[selectedScene]?.forEach((roomName, bulbState) {
                if (bulbState.on) {
                  masterSwitchOn = true;
                }
              });
            });
          },
        ),
        actions: [
          Switch(
            value: masterSwitchOn,
            activeColor: Colors.yellowAccent,
            onChanged: (bool switchState) {
              setState(() {
                masterSwitchOn = switchState;
                lightSwitches[selectedScene]?.forEach((room, lightBulbState) =>
                lightBulbState.on = masterSwitchOn);
              });
            },
          ),
        ]);
  }

  Future _showLightControlPanel(BuildContext context, String roomName) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return Container(
              height: MediaQuery.of(context).size.height / 2.4,
              child: new Scaffold(
                appBar: _buildLightControlPanelAppBar(roomName, setState),
                body: _buildLightControlPanelBody(setState),
              ));
        });
      },
    );
  }

  AppBar _buildLightControlPanelAppBar(String roomName, StateSetter setState) {
    return AppBar(
      bottom: PreferredSize(
        child: Container(
            color: Color(
                lightSwitches[selectedScene]![selectedRoom]!.hexIntValue()),
            height: 4.0),
        preferredSize: Size.fromHeight(4.0),
      ),
      title: Text(roomName),
      elevation: 0.0,
      backgroundColor: Color(0xFF777777),
      leading: Center(
          child: Icon(
            Icons.lightbulb,
            color:
            Color(lightSwitches[selectedScene]![selectedRoom]!.hexIntValue()),
          )),
      actions: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 16.0),
          child: Switch(
            activeColor: Color(
                lightSwitches[selectedScene]![selectedRoom]!.hexIntValue()),
            value: lightSwitches[selectedScene]![selectedRoom]!.on,
            onChanged: (bool? value) {
              setState(() {
                this.setState(() {
                  lightSwitches[selectedScene]?[selectedRoom]?.on = value!;
                  masterSwitchOn = false;
                  lightSwitches[selectedScene]?.forEach((key, value) {
                    if (value.on) {
                      masterSwitchOn = true;
                    }
                  });
                });
              });
            },
          ),
        ),
      ],
    );
  }

  Column _buildLightControlPanelBody(StateSetter setState) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        ColorSlider(
            colorTitle: 'Red',
            colorValue: lightSwitches[selectedScene]?[selectedRoom]!.redValue,
            onColorValueChange: (double value) {
              setState(() {
                this.setState(() {
                  lightSwitches[selectedScene]?[selectedRoom]!.redValue =
                      value.round();
                });
              });
            }),
        ColorSlider(
            colorTitle: 'Green',
            colorValue: lightSwitches[selectedScene]?[selectedRoom]!.greenValue,
            onColorValueChange: (double value) {
              setState(() {
                this.setState(() {
                  lightSwitches[selectedScene]?[selectedRoom]!.greenValue =
                      value.round();
                });
              });
            }),
        ColorSlider(
            colorTitle: 'Blue',
            colorValue: lightSwitches[selectedScene]?[selectedRoom]!.blueValue,
            onColorValueChange: (double value) {
              setState(() {
                this.setState(() {
                  lightSwitches[selectedScene]?[selectedRoom]!.blueValue =
                      value.round();
                });
              });
            }),
        ColorSlider(
            colorTitle: 'Alpha',
            colorValue: lightSwitches[selectedScene]?[selectedRoom]!.alphaValue,
            onColorValueChange: (double value) {
              setState(() {
                this.setState(() {
                  lightSwitches[selectedScene]?[selectedRoom]!.alphaValue =
                      value.round();
                });
              });
            }),
      ],
    );
  }
}

class ColorSlider extends StatelessWidget {
  const ColorSlider({
    Key? key,
    required this.colorTitle,
    required this.colorValue,
    required this.onColorValueChange,
  }) : super(key: key);

  final String colorTitle;
  final int? colorValue;
  final Function(double) onColorValueChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 12.0, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(colorTitle),
            flex: 1,
          ),
          Expanded(
            child: Slider(
              activeColor: Colors.grey,
              inactiveColor: Colors.black12,
              value: colorValue!.toDouble(),
              min: 0,
              max: 255,
              label: colorValue!.round().toString(),
              onChanged: onColorValueChange,
            ),
            flex: 6,
          ),
          Expanded(
            child: Text(colorValue.toString()),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class LightBulbCard extends StatelessWidget {
  const LightBulbCard(
      {this.room = 'Room Name', this.bulbState, this.selected = false});

  final String room;
  final LightBulbState? bulbState;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
        Border.all(color: Color(0xffeeeeee), width: selected ? 7.0 : 2.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
                Icons.lightbulb,
                size: 100.0,
                color:
                bulbState!.on ? Color(bulbState!.hexIntValue()) : Colors.grey,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            room,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class LightBulbState {
  bool on;
  int redValue;
  int greenValue;
  int blueValue;
  int alphaValue;

  LightBulbState(
      {this.on = true,
        this.redValue = 255,
        this.greenValue = 255,
        this.blueValue = 0,
        this.alphaValue = 255});

  String hexString() =>
      '${alphaValue.toRadixString(16).padLeft(2, '0')}' +
          '${redValue.toRadixString(16).padLeft(2, '0')}' +
          '${greenValue.toRadixString(16).padLeft(2, '0')}' +
          '${blueValue.toRadixString(16).padLeft(2, '0')}';

  int hexIntValue() {
    return int.parse(hexString(), radix: 16);
  }
}
