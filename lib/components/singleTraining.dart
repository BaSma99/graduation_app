import 'package:flutter/material.dart';
import '../screens/training_daetails.dart';

class SingleTraining extends StatelessWidget {
  final trainingName;
  final companyPicture;
  final companyName;
  final trainingState;
  final trainingLocation;
  final trainingAbout;
  final trainingRequirement;
  final salary;
  final vacancies;

  SingleTraining(
    this.trainingName,
    this.companyPicture,
    this.companyName,
    this.trainingState,
    this.trainingLocation,
    this.trainingRequirement,
    this.trainingAbout,
    this.salary,
    this.vacancies,
  );

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
                      trainingName,
                      companyPicture,
                      companyName,
                      trainingState,
                      trainingLocation,
                      trainingAbout,
                      trainingRequirement,
                      salary,
                      vacancies,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      trainingName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  companyPicture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
