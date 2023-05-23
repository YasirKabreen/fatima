import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Technology extends StatefulWidget {
  const Technology({Key? key}) : super(key: key);

  @override
  State<Technology> createState() => _TechnologyState();
}

Map<String, String> technologySentences = {
  'Computer': 'He used a computer to complete his work.',
  'Smartphone': 'She checked her messages on her smartphone.',
  'Tablet': 'He read an e-book on his tablet.',
  'Laptop': 'She carried her laptop to the meeting.',
  'Smartwatch': 'He tracked his fitness on his smartwatch.',
  'Television': 'She watched her favorite show on television.',
  'Camera': 'He captured beautiful photos with his camera.',
  'Headphones': 'She listened to music with her headphones.',
  'Gaming Console': 'He played video games on his gaming console.',
  'Virtual Reality': 'She immersed herself in virtual reality.',
  'Internet': 'He accessed information through the internet.',
  'WiFi': 'She connected to the WiFi network.',
  'Bluetooth': 'He paired his device with Bluetooth headphones.',
  'GPS': 'She used GPS to navigate to her destination.',
  'Artificial Intelligence': 'He developed an artificial intelligence system.',
  'Robot': 'She programmed a robot to perform specific tasks.',
  'Drones': 'He controlled a drone to capture aerial footage.',
  'Augmented Reality':
      'She experienced augmented reality through her smartphone.',
  '3D Printing': 'He created a 3D printed model.',
  'Cybersecurity': 'She protected sensitive data with cybersecurity measures.',
  'Cloud Computing': 'He stored his files in the cloud.',
};

List tim1 = technologySentences.keys.toList();
List tim2 = technologySentences.values.toList();

class _TechnologyState extends State<Technology> {
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
              'T',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'echnology',
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
