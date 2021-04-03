import 'package:flutter/material.dart';
import 'package:graduation_app/components/singleTraining.dart';
import '../db.dart';

class Training extends StatefulWidget {
  static const String routeName = '/trainings';

  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: training.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleTraining(
              training[index].trainingName,
              training[index].companyPicture,
              training[index].companyName,
              training[index].trainingState,
              training[index].trainingLocation,
              training[index].trainingAbout,
              training[index].trainingRequirement,
              training[index].salary,
              training[index].vacancies);
        });
  }
}
