import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

Map<String, String> sportsSentences = {
  'Football': 'He kicked the football into the goal.',
  'Basketball': 'She made a perfect shot and scored in basketball.',
  'Soccer': 'They played a thrilling game of soccer.',
  'Tennis': 'He served an ace in the game of tennis.',
  'Golf': 'She swung her club and hit the golf ball.',
  'Baseball': 'He hit a home run in the baseball game.',
  'Swimming': 'She broke the swimming record in her race.',
  'Running': 'He sprinted towards the finish line in the race.',
  'Cycling': 'They rode their bicycles in the cycling competition.',
  'Volleyball': 'She spiked the ball over the net in volleyball.',
  'Cricket': 'He hit a boundary in the game of cricket.',
  'Hockey': 'They scored a goal in the hockey match.',
  'Boxing': 'He delivered a powerful punch in the boxing ring.',
  'Martial Arts': 'She demonstrated her skills in martial arts.',
  'Gymnastics': 'He performed an impressive routine in gymnastics.',
  'Rugby': 'They tackled their opponent in the rugby game.',
  'Snowboarding':
      'She did a trick on her snowboard in the snowboarding competition.',
  'Surfing': 'He caught a wave and rode it while surfing.',
  'Skating': 'She gracefully glided across the ice while skating.',
  'Wrestling': 'He pinned his opponent down in the wrestling match.',
};

List tim1 = sportsSentences.keys.toList();
List tim2 = sportsSentences.values.toList();

class _SportsState extends State<Sports> {
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
              'S',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'ports',
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
