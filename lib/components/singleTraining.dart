import 'package:flutter/material.dart';
import '../screens/training_daetails.dart';

class SingleTraining extends StatelessWidget {
  final courseName;
  final courseLocation;
  final companyName;
  final skillsNeeded;
  final coursePeriod;
  final vacancies;
  final requirements;
  final availableFor;
  final about;
  SingleTraining(
      this.courseName,
      this.courseLocation,
      this.companyName,
      this.skillsNeeded,
      this.coursePeriod,
      this.vacancies,
      this.requirements,
      this.availableFor,
      this.about);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //passing values of the product to the product details
                builder: (context) => new TrainingDetails(
                      courseName,
                      courseLocation,
                      companyName,
                      skillsNeeded,
                      coursePeriod,
                      vacancies,
                      requirements,
                      availableFor,
                      about,
                    ))),
            child: GridTile(
              child: ListTile(
                title: Text(
                  courseName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  courseLocation,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(companyName),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
