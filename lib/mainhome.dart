import 'package:fatima_hassan/screens/animals.dart';
import 'package:fatima_hassan/screens/bodyParts.dart';
import 'package:fatima_hassan/screens/clothing.dart';
import 'package:fatima_hassan/screens/colors.dart';
import 'package:fatima_hassan/screens/food.dart';
import 'package:fatima_hassan/screens/nature.dart';
import 'package:fatima_hassan/screens/occupations.dart';
import 'package:fatima_hassan/screens/sports.dart';
import 'package:fatima_hassan/screens/technology.dart';
import 'package:fatima_hassan/screens/time.dart';
import 'package:fatima_hassan/screens/transportation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainHome extends StatelessWidget {
  MainHome({Key? key}) : super(key: key);
  List<Widget> categories = [
    Time(),
    Clothing(),
    Food(),
    Animals(),
    Sports(),
    Technology(),
    Nature(),
    Occupations(),
    Transportation(),
    BodyParts(),
    Colrs(),
    // music(),
    // movies(),
    // science(),
    // history(),
    // languages(),
    // emotions(),
    // relationships(),
    // shapes(),
    // numbers(),
    // weather(),
    // books(),
    // hobbies(),
    // countries(),
    // art(),
    // games(),
    // celebrities(),
    // fruits(),
    // vegetables(),
    // school(),
    // travel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              'FH',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'al-zahra',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink,
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => categories[index],
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      categories[index].toString(),
                      style:
                          const TextStyle(fontSize: 25, color: Colors.blueGrey),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
