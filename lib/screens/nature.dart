import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  State<Nature> createState() => _NatureState();
}

Map<String, String> natureSentences = {
  'Tree': 'The tall tree swayed in the wind.',
  'Flower': 'The beautiful flower bloomed in the garden.',
  'River': 'The crystal-clear river flowed peacefully.',
  'Mountain': 'The majestic mountain stood tall in the distance.',
  'Sun': 'The sun shone brightly in the clear blue sky.',
  'Moon': 'The full moon illuminated the night sky.',
  'Stars': 'The stars twinkled like diamonds in the dark sky.',
  'Clouds': 'The fluffy clouds drifted lazily across the sky.',
  'Rainbow': 'A colorful rainbow appeared after the rain.',
  'Beach': 'The sandy beach stretched as far as the eye could see.',
  'Ocean': 'The vast ocean waves crashed against the shore.',
  'Forest': 'The dense forest was filled with towering trees.',
  'Waterfall': 'The breathtaking waterfall cascaded down the rocks.',
  'Bird': 'The chirping of birds filled the air.',
  'Butterfly': 'The delicate butterfly fluttered its wings.',
  'Breeze': 'The gentle breeze rustled the leaves.',
  'Sunset': 'The vibrant colors painted the sky during the sunset.',
  'Rain': 'The refreshing raindrops fell from the sky.',
  'Snow': 'The soft snowflakes covered the ground in a white blanket.',
  'Cave': 'The dark cave was filled with mystery.',
  'Lake': 'The serene lake reflected the surrounding mountains.',
};

List tim1 = natureSentences.keys.toList();
List tim2 = natureSentences.values.toList();

class _NatureState extends State<Nature> {
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
              'N',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ature',
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
