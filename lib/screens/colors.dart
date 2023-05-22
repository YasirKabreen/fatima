import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

class Colrs extends StatefulWidget {
  const Colrs({Key? key}) : super(key: key);

  @override
  State<Colrs> createState() => _ColrsState();
}

Map<String, String> colorSentences = {
  'Red': 'The roses are red.',
  'Blue': 'The sky is blue.',
  'Green': 'The grass is green.',
  'Yellow': 'The sun is yellow.',
  'Orange': 'The oranges are orange.',
  'Purple': 'The violets are purple.',
  'Pink': 'She wore a pretty pink dress.',
  'Brown': 'The tree trunks are brown.',
  'Black': 'The night sky is black.',
  'White': 'The snow is white.',
  'Gray': 'The clouds are gray.',
  'Silver': 'She wore a shiny silver necklace.',
  'Gold': 'The trophy was made of pure gold.',
  'Beige': 'The walls were painted in a soft beige color.',
  'Turquoise': 'The ocean water had a beautiful turquoise hue.',
  'Lime': 'He squeezed a lime into his drink.',
  'Magenta': 'The flowers bloomed in vibrant magenta.',
  'Cyan': 'The computer screen displayed a bright cyan color.',
  'Indigo': 'The flag had stripes of indigo and white.',
  'Maroon': 'He wore a maroon sweater to keep warm.',
};

List tim1 = colorSentences.keys.toList();
List tim2 = colorSentences.values.toList();

class _ColrsState extends State<Colrs> {
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
              'C',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'olors',
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
