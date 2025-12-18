import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/common_widgets/age_slider.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/common_widgets/breed_selector.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/common_widgets/color_picker.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/common_widgets/dog_builder.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/models/breed.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/models/dog.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/pages/breed_form_page.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/pages/dog_form_page.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/services/database_service.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common_widgets/breed_builder.dart';

class HomePage_Proj_Roq extends StatefulWidget {
  const HomePage_Proj_Roq({Key? key}) : super(key: key);

  @override
  _HomePage_Proj_RoqState createState() => _HomePage_Proj_RoqState();
}

class _HomePage_Proj_RoqState extends State<HomePage_Proj_Roq> {
  final DatabaseService _databaseService = DatabaseService();

  Future<List<Dog>> _getDogs() async {
    return await _databaseService.dogs();
  }

  Future<List<Breed>> _getBreeds() async {
    return await _databaseService.breeds();
  }

  Future<void> _onDogDelete(Dog dog) async {
    await _databaseService.deleteDog(dog.id!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dog Database'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Dogs'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Breeds'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DogBuilder(
              future: _getDogs(),
              onEdit: (value) {
                {
                  Navigator.of(context)
                      .push(
                        MaterialPageRoute(
                          builder: (_) => DogFormPage(dog: value),
                          fullscreenDialog: true,
                        ),
                      )
                      .then((_) => setState(() {}));
                }
              },
              onDelete: _onDogDelete,
            ),
            BreedBuilder(
              future: _getBreeds(),
            ),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(
                        builder: (_) => BreedFormPage(),
                        fullscreenDialog: true,
                      ),
                    )
                    .then((_) => setState(() {}));
              },
              heroTag: 'addBreed',
              child: FaIcon(FontAwesomeIcons.plus),
            ),
            SizedBox(height: 12.0),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(
                        builder: (_) => DogFormPage(),
                        fullscreenDialog: true,
                      ),
                    )
                    .then((_) => setState(() {}));
              },
              heroTag: 'addDog',
              child: FaIcon(FontAwesomeIcons.paw),
            ),
          ],
        ),
      ),
    );
  }
}
