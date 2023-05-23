import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class BodyParts extends StatefulWidget {
  const BodyParts({Key? key}) : super(key: key);

  @override
  State<BodyParts> createState() => _BodyPartsState();
}

Map<String, String> bodyPartSentences = {
  'Head': 'I have a headache.',
  'Eyes': 'Her eyes sparkled with joy.',
  'Nose': 'I can smell the delicious food.',
  'Mouth': 'Open your mouth and say "ah".',
  'Ears': 'He has excellent hearing.',
  'Hands': 'She has delicate hands.',
  'Feet': 'My feet are tired after a long day.',
  'Legs': 'He broke his leg while playing soccer.',
  'Arms': 'She has strong arms.',
  'Fingers': 'He counted on his fingers.',
  'Toes': 'The sand tickled her toes at the beach.',
  'Shoulders': 'He carried the weight on his shoulders.',
  'Knees': 'She fell down and scraped her knees.',
  'Elbows': 'He rested his elbows on the table.',
  'Back': 'I need a massage for my sore back.',
  'Chest': 'She felt her heart pounding in her chest.',
  'Stomach': 'His stomach growled with hunger.',
  'Neck': 'She wore a necklace around her neck.',
  'Hair': 'His hair is long and curly.',
  'Teeth': 'She showed off her shiny white teeth.',
  'Tongue': 'Stick out your tongue and say "ah".',
};

List tim1 = bodyPartSentences.keys.toList();
List tim2 = bodyPartSentences.values.toList();

class _BodyPartsState extends State<BodyParts> {
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
              'B',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'odyPart',
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
