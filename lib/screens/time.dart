import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

Map<String, String> timeSentences = {
  'Time': 'Time flies.',
  'Second': 'Just a second.',
  'Minute': 'In a minute.',
  'Hour': "It's been hours.",
  'Day': 'Have a good day.',
  'Week': 'See you next week.',
  'Month': 'The month went by quickly.',
  'Year': 'Happy New Year!',
  'Morning': 'Good morning, sunshine!',
  'Afternoon': "Let's meet in the afternoon.",
  'Evening': "It's evening already.",
  'Night': 'Time to sleep at night.',
  'Yesterday': 'Yesterday was fun.',
  'Today': 'Today is a special day.',
  'Tomorrow': 'Tomorrow will be better.',
  'Past': "It's in the past now.",
  'Present': 'Living in the present.',
  'Future': 'Excited for the future.',
  'Clock': 'Check the time on the clock.',
  'Calendar': 'Mark the date on the calendar.',
};

List tim1 = timeSentences.keys.toList();
List tim2 = timeSentences.values.toList();

class _TimeState extends State<Time> {
  String arabic = '';
  GoogleTranslator trans = GoogleTranslator();

  trasnlate(f) {
    trans.translate(f, to: 'ar').then((value) {
      arabic = value.text;
    });
    return Text(
      arabic,
      style: TextStyle(fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text(
              'T',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ime',
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
                          Text(
                            tim1[index],
                            style: TextStyle(
                                fontSize: 30, color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        tim2[index],
                        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
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
