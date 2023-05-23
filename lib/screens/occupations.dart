import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Occupations extends StatefulWidget {
  const Occupations({Key? key}) : super(key: key);

  @override
  State<Occupations> createState() => _OccupationsState();
}

Map<String, String> occupationSentences = {
  'Doctor': 'The doctor examined the patient carefully.',
  'Teacher': 'The teacher explained the lesson to the students.',
  'Engineer': 'The engineer designed the new bridge.',
  'Lawyer': 'The lawyer presented a strong case in court.',
  'Chef': 'The chef prepared a delicious meal.',
  'Police Officer':
      'The police officer patrolled the streets to keep them safe.',
  'Firefighter': 'The firefighter bravely entered the burning building.',
  'Artist': 'The artist created a stunning painting.',
  'Writer': 'The writer published a bestselling novel.',
  'Athlete': 'The athlete trained hard for the upcoming competition.',
  'Scientist': 'The scientist conducted experiments in the laboratory.',
  'Actor': 'The actor delivered a captivating performance on stage.',
  'Musician': 'The musician played a beautiful melody on the piano.',
  'Pilot': 'The pilot safely landed the plane.',
  'Architect': 'The architect designed a modern building.',
  'Entrepreneur': 'The entrepreneur started a successful business.',
  'Photographer': 'The photographer captured stunning images.',
  'Nurse': 'The nurse cared for the patients with compassion.',
  'Veterinarian': 'The veterinarian treated sick animals.',
  'Electrician': 'The electrician fixed the electrical wiring.',
  'Plumber': 'The plumber repaired the leaking pipe.',
};

List tim1 = occupationSentences.keys.toList();
List tim2 = occupationSentences.values.toList();

class _OccupationsState extends State<Occupations> {
  String arabic = '';
  GoogleTranslator trans = GoogleTranslator();

  trasnlate(f) {
    trans.translate(f, to: 'ar').then((value) {
      arabic = value.text;
    });
    return Text(
      arabic,
      style: const TextStyle(fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'O',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ccupations',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectableText(
                            tim1[index],
                            style: const TextStyle(
                                fontSize: 30, color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        child: SelectableText(
                          tim2[index],
                          style: const TextStyle(
                              fontSize: 18, color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
