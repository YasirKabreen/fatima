import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:translator/translator.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  State<Animals> createState() => _AnimalsState();
}

Map<String, String> animalSentences = {
  'Dog': 'A dog is a loyal companion.',
  'Cat': 'Cats are independent and graceful.',
  'Elephant': 'Elephants are gentle giants.',
  'Lion': 'The lion is the king of the jungle.',
  'Tiger': 'Tigers are powerful and majestic.',
  'Giraffe': 'Giraffes have long necks.',
  'Monkey': 'Monkeys are playful and mischievous.',
  'Dolphin': 'Dolphins are highly intelligent.',
  'Kangaroo': 'Kangaroos have pouches to carry their young.',
  'Penguin': 'Penguins are great swimmers.',
  'Crocodile': 'Crocodiles have powerful jaws.',
  'Gorilla': 'Gorillas are strong and intelligent primates.',
  'Zebra': 'Zebras have distinctive black and white stripes.',
  'Horse': 'Horses are magnificent creatures.',
  'Owl': 'Owls are known for their wisdom.',
  'Squirrel': 'Squirrels are nimble and agile.',
  'Panda': 'Pandas are adorable and rare.',
  'Koala': 'Koalas are native to Australia.',
  'Snake': 'Snakes slither and can be venomous.',
  'Butterfly': 'Butterflies are beautiful insects.',
  'Shark': 'Sharks are apex predators of the ocean.',
};

List tim1 = animalSentences.keys.toList();
List tim2 = animalSentences.values.toList();

class _AnimalsState extends State<Animals> {
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
              'A',
              style: TextStyle(fontSize: 40, color: Colors.amber),
            ),
            Text(
              'nimals',
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
